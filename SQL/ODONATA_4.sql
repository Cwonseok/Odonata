
-- RESERV�� ROOM_NAME�߰�
ALTER TABLE RESERV ADD ROOM_NAME VARCHAR2(100);

-- PAYMENT�� P_METHOD����
--  : ���� �ý����� I'MPORT�� �̿��ϰ� �Ǿ��⶧���� ���� ����� �޾ƿü� ��� �����Ͽ����ϴ�.
ALTER TABLE PAYMENT DROP COLUMN P_METHOD;