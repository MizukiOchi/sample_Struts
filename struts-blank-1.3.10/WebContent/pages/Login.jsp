<%--(1)page�a���N�e�B�u���g�p���AJSP�t�@�C���̑������w��--%>
<%@ page contentType="text/html; charset=Shift_JIS" %>
<%--(2)taglib�f�B���N�e�B�u���g�p���AJSP�t�@�C���Ŏg�p����^�O���C�u�������w�肷��B
�����ł́AStruts�ł��炩���ߗp�ӂ���Ă���Struts�^�O���C�u�����̂����Astruts-html.tld�̎g�p���w�肷��B
prefix�����ɂ��Astruts-html.tld���g�p����ꍇ�́A�^�O��html���w�肷��B--%>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>

<html>
<head>
<meta charset="UTF-8">
<title>login���</title>
</head>
<body>

<html:errors/>  <%-- (3)<html:error/>�^�O�̓G���[����������Ă���ꍇ�́A�G���[���b�Z�[�W��\�����A�G���[����������Ă��Ȃ��ꍇ�́A�����\���������^�O�B--%>

ID�E�p�X���[�h����͂��Ă��������B
<html:form action="/authentication" focus="id"> <%-- (4) <html:form>�^�O��HTML��<form>�^�O�Ƃقړ��l�̐U����������^�O�Baction������submit�{�^���������ꂽ���̑J�ڐ���w��Bfocus�����͂���JSP�t�@�C�����J���ꂽ���ɂǂ̃t�H�[�����ڂ����߂ɑI���\�ɂ��邩���w�肷��B--%>
	<html:text property="id" size=16"/> <%-- (5) <html:text>�^�O��HTML��<input type=text>�^�O�Ƃقړ��l�̐U����������^�O�Bproperty������HTML��name�����Asize������HTML��size�����Ɠ��l�̓���������B--%>
	<br>
	<%-- (6) <html:pasword>�^�O��HTML��<input type=password>�^�O�Ƃقړ��l�̐U����������^�O�Bredisplay�����͒��O�ɓ��͂����l���ĕ\�����邩�ǂ������w�肷��B--%>
	<html:password property="pass" size="16" redisplay="false"/> <%-- ��residsplay������false��ݒ肷�邱�ƂŁA���͂��ꂽ���e���\���ɂ��邱�Ƃ��\�B--%>
	<br>
	<html:submit property="submit" value="���M"/>
	<html:reset value="���Z�b�g"/>
</html:form>

</body>
</html>