package chap07.file;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class FileController {
	
		//"/files/{fileId:[a-zA-Z]\\d{3}} 에서 d{3}의 의미는 숫자가 3개가 와야한다는 말이다. digit[3]이다. 
	@RequestMapping(value = "/files/{fileId:[a-zA-Z]\\d{3}}", method = RequestMethod.GET)
	public String fileInfo(@PathVariable String fileId) throws NoFileInfoException {
		FileInfo fileInfo = getFileInfo(fileId);
		if (fileInfo == null) {
			throw new NoFileInfoException();
		}
		return "files/fileInfo"; //보내는 것 없다.
	}

	private FileInfo getFileInfo(String fileId) {
		if ("a111".equals(fileId))
			return null;
		return new FileInfo(fileId);
	}

	@RequestMapping(value = "/files/{fileId:[a-zA-Z]\\d{3}}", method = RequestMethod.POST)
	public String updateFile(@PathVariable String fileId) {
		return "redirect:/files/{fileId}"; //얘도 보내는 것 없다.
	}
	
	
	
	
		//? 는 1개 이상 어떤 글씨도 와야해. a.download, a2.download 하면 먹어야해.
	@RequestMapping("/files/?*.download")
	public String fileInfo(HttpServletRequest request) {
		return "files/fileDownload"; 
	}
	
	
		// **는 뭐든 두개 있으면 된다. 안에 슬레시가 많아도 상관 없다.
	@RequestMapping("/folders/**/files")
	public String list(HttpServletRequest request, Model model) {
		String uri = request.getRequestURI();
		if (uri.endsWith("/folders/files")) {
			model.addAttribute("folderIds", new String[0]); 
		} else {
			String ctxPath = request.getContextPath();
			String path = ctxPath.isEmpty() ? uri : uri.substring(ctxPath.length());
			String folderTreePath = path.substring("/folders/".length(), path.length() - "/files".length());
			
			// 읽어서 /로 나눈다.URL로 가져오는 패턴 나온다. 나눠서 얘를 보낸다.
			String[] folderIds = folderTreePath.split("/");
			model.addAttribute("folderIds", folderIds); //이거 하나 보낸다
		}
		return "files/filesInFolder";
	}
	

	
	
}
