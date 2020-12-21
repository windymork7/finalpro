package com.example.finalpro.service.board;

import javax.servlet.http.HttpSession;

public interface TipReplyPickActionService {
    public void tipReplyPickAction(HttpSession session, int new_no, int new_reply_no);
}
