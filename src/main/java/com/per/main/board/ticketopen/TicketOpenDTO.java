package com.per.main.board.ticketopen;

import java.util.List;

import com.per.main.board.BoardDTO;
import com.per.main.member.MemberDTO;

public class TicketOpenDTO extends BoardDTO{
	
	private List<TicketOpenFileDTO> nfDto;
	
	private MemberDTO memberDto;

	public List<TicketOpenFileDTO> getNfDto() {
		return nfDto;
	}

	public void setNfDto(List<TicketOpenFileDTO> nfDto) {
		this.nfDto = nfDto;
	}

	public MemberDTO getMemberDto() {
		return memberDto;
	}

	public void setMemberDto(MemberDTO memberDto) {
		this.memberDto = memberDto;
	}
	
}
