package com.example.finalpro.serviceImpl.board;

import com.example.finalpro.dao.MemberDAO;
import com.example.finalpro.service.board.CommonBoardInsertService;
import com.example.finalpro.dao.BoardDAO;
import com.example.finalpro.vo.NoticeVO;
import com.example.finalpro.vo.QboardVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import javax.swing.filechooser.FileSystemView;
import java.io.File;
import java.text.SimpleDateFormat;
import java.util.Calendar;

@Service
public class CommonBoardInsertServiceImpl implements CommonBoardInsertService {

    @Autowired
    BoardDAO boardDAO;

    @Autowired
    MemberDAO memberDAO;

    @Override
    public void qBoardInsert(MultipartFile q_file2, QboardVO qboardVO) {

//        String rootPath = FileSystemView.getFileSystemView().getHomeDirectory().toString();
//        System.out.println("Directory : "+ FileSystemView.getFileSystemView().getDefaultDirectory());
//        System.out.println("rootPath : " + rootPath);
//        String basePath = rootPath + "/" + "single";
//        System.out.println("basePath : " + basePath);
//        String filePath = basePath + "/" + q_file2.getOriginalFilename();
//        System.out.println("filePath : " + filePath);

        SimpleDateFormat sdf = new SimpleDateFormat("yyyy년MM월dd일HH시mm분ss초");
        Calendar c1 = Calendar.getInstance();
        String strToday = sdf.format(c1.getTime());

        File dest = new File("C:/Users/Administrator/IdeaProjects/finalpro/src/main/resources/static/upload/"+strToday+"_"+q_file2.getOriginalFilename());

        qboardVO.setQ_file(strToday+"_"+q_file2.getOriginalFilename());

        try {
            q_file2.transferTo(dest);
        } catch (Exception e) {
            e.printStackTrace();
        }

        boardDAO.qBoardInsert(qboardVO);
        memberDAO.commonExpUpate(qboardVO.getMem_no(),5);

    }
}