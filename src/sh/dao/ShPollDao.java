package sh.dao;

import java.util.List;

import sh.model.ShPollDto;
import sh.model.ShPollSubDto;
import sh.model.ShVoter;

public interface ShPollDao {

	public List<ShPollDto> getPollAlllist();		//��ǥ����Ʈ
	public int isVote(ShVoter voter);				//���� ��ǥ�ߴ���	
	
	public void makePoll(ShPollDto poll);
	public void makePollSub(ShPollSubDto pollsub);
	
	//��ǥ �����
	public ShPollDto getPoll(ShPollDto poll);	//�׸�
	public List<ShPollSubDto> getPollSubList(ShPollDto poll);	//�����
	
	//��ǥ��
	public void pollingVoter(ShVoter voter);
	public void pollingPoll(ShVoter voter);
	public void pollingSub(ShVoter voter);

	
}
