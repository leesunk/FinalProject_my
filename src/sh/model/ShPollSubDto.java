package sh.model;

import java.io.Serializable;

/*
DROP TABLE SH_POLLSUB			      
CASCADE CONSTRAINTS;

DROP SEQUENCE SH_POLLSUB_SEQ;

CREATE TABLE SH_POLLSUB(			  --��������ǥ(SH_POLLSUB)
	POLLSUBID NUMBER NOT NULL,
	POLLID NUMBER NOT NULL,
	ANSWER VARCHAR2(1000) NOT NULL,
	ACOUNT NUMBER NOT NULL,
	CONSTRAINT SH_POLLSUB_PK PRIMARY KEY(POLLSUBID)
);

CREATE SEQUENCE SH_POLLSUB_SEQ
START WITH 1
INCREMENT BY 1;

ALTER TABLE SH_POLLSUB ADD CONSTRAINT SH_POLLSUB_FK
FOREIGN KEY(POLLID)  
REFERENCES POLL(POLLID);
*/

//�����
public class ShPollSubDto implements Serializable {

	private int pollsubid;	//������  ��ȣ 1.��� 2.�� 3.�� 4.���� 5.�ں���
	private int pollid;		//������ȣ         1     1    1    2     2
	private String answer;	//����(��� �� �� ���� �ں���)
	private int acount;		//�� ���⿡ ������ �����
	
	public ShPollSubDto() {}

	public int getPollsubid() {
		return pollsubid;
	}

	public void setPollsubid(int pollsubid) {
		this.pollsubid = pollsubid;
	}

	public int getPollid() {
		return pollid;
	}

	public void setPollid(int pollid) {
		this.pollid = pollid;
	}

	public String getAnswer() {
		return answer;
	}

	public void setAnswer(String answer) {
		this.answer = answer;
	}

	public int getAcount() {
		return acount;
	}

	public void setAcount(int acount) {
		this.acount = acount;
	}
	
}
