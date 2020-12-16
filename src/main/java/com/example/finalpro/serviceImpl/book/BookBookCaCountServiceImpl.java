package com.example.finalpro.serviceImpl.book;

import com.example.finalpro.dao.BookDAO;
import com.example.finalpro.service.book.BookBookCaCountService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class BookBookCaCountServiceImpl implements BookBookCaCountService {
    @Autowired
    BookDAO bookDAO;

    @Override
    public int bookCaListCount(int sub_ca_no, int book_ca_no, int ca_no) {
        return bookDAO.bookCaListCount(sub_ca_no, book_ca_no, ca_no);
    }
}
