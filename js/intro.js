var score = 0;

// ���� ���� ǥ����
function myAge() {
    var age = document.getElementById("age").value;
    document.getElementById("ageString").innerHTML=age+" ��?";
}

function call() {

    if(form01.age.value == 28) { score += 25; }
    if(form01.hobby[1].checked && form01.hobby[2].checked) { score += 25; }
    if(form01.bloodType[0].checked) { score += 25; }
    if(form01.season.value == "fall") { score += 25; }

    alert(score + "��\n"
        + "���� 28�� �Դϴ�." + "\n"
        + "���� å�б�� �����ϱ⸦ �����մϴ�." + "\n"
        + "�� �������� A�������� �ҽ����� �ʾƿ�." + "\n"
        + "�׸��� �� ������ �����մϴ�." + "\n");

}