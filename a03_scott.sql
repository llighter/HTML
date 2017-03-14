select * from emp order by empno;
-- �ּ�����Ű
-- �ȳ��ϼ���
-- �ּ����Դϴ�.
-- select : Ư�� ���̺��� �÷����� �����ϴ� ��ɾ�.
-- 1) * : ��ü �÷��� ������ ������ list �Ҷ�.
-- 2) �÷��� : �ش� �����͸� ���� ���� ��ɾ�
-- 3) from ���̺�� : ���̺��� list �ϱ� ���Ͽ�.
select * from emp; -- emp�� ���̺��� ��ü �÷� ������ list �ϼ���.
select empno, job from emp; -- emp���̺��� �÷� �߿� empno, job�� list
select deptno, ename, sal from emp;
-- empno: emp number, ename: emp name, job: job title, mgr: manager's number, etc.
-- P1 print data of (empno, job and deptno)
select empno, job, deptno from emp; 

-- ��� ������.
-- �����ͺ��̽��� �÷������� ������ ó�� �� �� �ִ�.
-- ��Ģ������ �����ϸ� %������ �������� �ʴ´�.
select ename, sal, sal+100, sal-10, sal*10, sal/10 from emp;
-- �÷����� ����ó�� : �÷���1 + �÷���2
select empno, sal, deptno, sal + deptno from emp;

-- P1 ������ ���� �������� ������� 10% �ö���.
-- �����, ��������, �λ��, ����� ���������� ����ϼ���/
select ename, sal, sal/10 as inc  , sal+sal/10 as total from emp;

select * from emp;
-- P2 �μ����� �����λ���� �ٸ��� å��.
-- �μ���ȣ 10 ==> 10%, 20 ==> 20%, 30 ==> 30%
-- �̸�, �μ���ȣ, ����, �λ�� ����
select ename, deptno, sal, sal*(deptno*0.01)+sal as sal_after from emp;

-- ���ڿ��� ǥ��+?
-- database ���ڿ� ����ó���� '||'�� Ȱ���Ѵ�.
select '����� �̸���'||ename||'�̰�, �μ���ȣ�� '||deptno||' �Դϴ�..' from emp;
select * from emp;
-- Ȯ�� ���� �����ȣ�� @@@�� @@@@�� ���� ������ @@@@ �Դϴ�.!! -- ��� listó��
select '�����ȣ��' ||empno|| '�� ' ||ename||'��(��) ���� ������ '||sal||'���� �Դϴ�.' from emp;

-- nvl()
-- null : �����ͺ��̽����� �����Ͱ� ���� ���� null���̶�� �Ѵ�. ����('')�� �ƴϸ� 0�� �ƴ�
-- ���״�� �����Ͱ� �ԷµǾ� ���� �ʴ� ���� ���Ѵ�.
-- ���α׷����� ���̴� �ʱⰪ�� �����ؼ� �˰� �־�� �Ѵ�.
-- ����: ȭ��� ������ ���� null�� ǥ�õǰų�, nullpointerException�̶�� ������ �߻��Ѵ�.
-- ����, ������ Į������ ���굵 ���������� ���� �ʴ´�.

select sal, sal+null from emp;
-- �׷��� �����ͺ��̽������� null�� ���� ������ �������� ó���� ���� �Լ��� ���� Ȱ���Ѵ�.
-- nvl�� Ȱ���ϸ� null ���� ��, �ʱⰪ�� ���� ���Ǹ� �ؼ� ���� ó���� �����ϰ� �Ѵ�.
select ename, sal, nvl(comm, 0) from emp;
-- empno�� ��Ī���� companyNo�� ����� �ߴ�. ����ϼ���.
select empno as companyNo from emp;
-- ��Ī�� ���α׷� �������� �߿��� �ǹ̸� ������.
-- ��ټ� ���α׷��� ��Ī���� �����ϰ� ����ϴ� ��찡 ����.
-- ex) rs.getString("��Ī/�÷���")
-- as ��ſ� ����(' ')���� ó���Ѵ�.
select '�����'||empno||' �Դϴ�.' show from emp;
-- ������ ������ ����� �÷����� ��Ÿ������.
-- �÷���		depandname	upgradeRatio 	enterCompany
-- ��µ����� 	(�μ���ȣ)�̸�	������ 10%			�Ի�����
select '('||deptno||')'||ename depandname, sal*0.1 upgradeRatio, hiredate enterCompany from emp;