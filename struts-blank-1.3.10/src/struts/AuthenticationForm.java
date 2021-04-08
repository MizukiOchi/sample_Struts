package struts;

import org.apache.struts.action.ActionForm;

public final class AuthenticationForm extends ActionForm{ //(1)ActionFormクラスをスーパークラスとして、AuthenticationFormクラスを宣言。

	//(2)値を保持する変数の宣言
	private String id;
	private String pass;

	//(3)値を操作するアクセスメソッドの宣言
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPass() {
		return pass;
	}
	public void setPass(String pass) {
		this.pass = pass;
	}

}
