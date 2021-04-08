package struts;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.action.ActionMessage;
import org.apache.struts.action.ActionMessages;

public final class AuthenticationAction extends Action { //(1)Actionクラスをスーパークラスに指定して、AuthenticatonActionクラスを宣言する。
	public ActionForward execute(ActionMapping mapping, ActionForm form, HttpServletRequest req,
			HttpServletResponse res) {

		HttpSession session = req.getSession(); //(2)getSessionメソッドを使用し、HttpSessionオブジェクトを取得。
		ActionMessages errors = new ActionMessages(); //(3)ActionMessagesオブジェクトのerrorを生成する。

		//(4)アクション・フォームBeanから値の取り出し
		AuthenticationForm authenticationForm = (AuthenticationForm) form;
		String id = authenticationForm.getId();
		String pass = authenticationForm.getPass();

		if (!(id.equals("java") && pass.contentEquals("road"))) { //(5)if文でIDがjava、パスワードがroadの場合は正常処理を行い、そうでない場合はエラー処理を行う。
			errors.add(ActionMessages.GLOBAL_MESSAGE, new ActionMessage("errors.login"));//(6)エラー生成
			saveErrors(req, errors); //(7)saveErrorメソッドを使用し、エラーメッセージを保存する。
			return (mapping.findForward("fail")); //(8)遷移先の指定
		} else {
			session.setAttribute("id", id); //(9)正常処理の場合、setAttributeメソッドを使用し正常処理されたID情報を保存する。
			return (mapping.findForward("success")); //(10)遷移先の指定
		}
	}
}
