<%--(1)pageヂレクティブを使用し、JSPファイルの属性を指定--%>
<%@ page contentType="text/html; charset=Shift_JIS" %>
<%--(2)taglibディレクティブを使用し、JSPファイルで使用するタグライブラリを指定する。
ここでは、Strutsであらかじめ用意されているStrutsタグライブラリのうち、struts-html.tldの使用を指定する。
prefix属性により、struts-html.tldを使用する場合は、タグにhtmlを指定する。--%>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>

<html>
<head>
<meta charset="UTF-8">
<title>login画面</title>
</head>
<body>

<html:errors/>  <%-- (3)<html:error/>タグはエラーが生成されている場合は、エラーメッセージを表示し、エラーが生成されていない場合は、何も表示したいタグ。--%>

ID・パスワードを入力してください。
<html:form action="/authentication" focus="id"> <%-- (4) <html:form>タグはHTMLの<form>タグとほぼ同様の振舞いをするタグ。action属性はsubmitボタンが押された時の遷移先を指定。focus属性はこのJSPファイルが開かれた時にどのフォーム項目を初めに選択可能にするかを指定する。--%>
	<html:text property="id" size=16"/> <%-- (5) <html:text>タグはHTMLの<input type=text>タグとほぼ同様の振舞いをするタグ。property属性はHTMLのname属性、size属性はHTMLのsize属性と同様の働きをする。--%>
	<br>
	<%-- (6) <html:pasword>タグはHTMLの<input type=password>タグとほぼ同様の振舞いをするタグ。redisplay属性は直前に入力した値を再表示するかどうかを指定する。--%>
	<html:password property="pass" size="16" redisplay="false"/> <%-- ←residsplay属性にfalseを設定することで、入力された内容を非表示にすることが可能。--%>
	<br>
	<html:submit property="submit" value="送信"/>
	<html:reset value="リセット"/>
</html:form>

</body>
</html>