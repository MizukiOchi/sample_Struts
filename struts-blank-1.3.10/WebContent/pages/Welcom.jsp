<%@ page contentType="text/html; charset=Shift_JIS" %>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic" %>

<logic:notPresent name="id" scope="session">  <%-- (1)login�^�O���C�u������<logic:notPresent>�^�O��name�����Ŏw�肵���I�u�W�F�N�g����������Ă��Ȃ��ꍇ�A<logic:redirect>�^�O�Ŏw�肳�ꂽ�y�[�W�֑J�ڂ��鏈�����s���B<logic:redirect>�^�O��forward�����Ŏw�肳�ꂽ�L�[���[�h�ɍ��v����J�ڐ�̃y�[�W���J���W�����E�R���t�B�M�����[�V�����E�t�@�C���Ɏw�肳��܂��B((2)�Ő���) --%>
    <logic:redirect forward="fail"/>
</logic:notPresent>

<html>
<head>
<title>welcom���</title>
</head>
<body>

�悤����
<bean:write name="id" scope="session"/> <%-- (2) bean�^�O���C�u������<bean:write>�^�O��name�����Ŏw�肳�ꂽ�I�u�W�F�N�g����������Ă���ꍇ�A���̒l��\������B�����ł́Alogin.jsp�t�@�C����(5)�Ő��������t�H�[���ɓ��͂��ꂽ�l���\�������B--%>
����

</body>
</html>