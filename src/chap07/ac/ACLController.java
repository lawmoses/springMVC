package chap07.ac;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ACLController {

		//이 것이 문제 있는 것이다	
		//이것은 값이 안 들어와있다. 인젝션해주겠다는 것이지. 
		//이것은 코드를 보니, 컨스트럭트 인젝션이 아니고, 세터 인젝션이다.
	private AclService aclService;

	@RequestMapping("/acl/list")
	public String list(Model model) {
		model.addAttribute("aclList", aclService.getAclList());
		return "acl/aclList";
	}

	@RequestMapping("/acl/modify")
	public String modify(AclModRequest modReq) {
		List<AccessPerm> perms = new ArrayList<>();
		for (AccessPerm reqPerm : modReq.getPerms())
			if (reqPerm.hasData())
				perms.add(reqPerm);
		modReq.setPerms(perms);

		aclService.modifyAccessControll(modReq);
		return "redirect:/acl/list";
	}

		//private AclService aclService; 를 sample.xml 에서 세터인젝션 해준 것이다.
		//세터 인젝션을 한 것이다.
	public void setAclService(AclService aclService) {
		this.aclService = aclService;
	}
	
}
