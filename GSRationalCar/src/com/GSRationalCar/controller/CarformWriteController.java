package com.GSRationalCar.controller;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Enumeration;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.GSRationalCar.dao.CarFormDAO;
import com.GSRationalCar.vo.CarformVO;
import com.oreilly.servlet.MultipartRequest;


//매물 등록시 실행되는 컨트롤러
public class CarformWriteController implements Controller {

	public void execute(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("UTF-8");
		HttpSession session = req.getSession();
		String id = (String) session.getAttribute("id");


		CarFormDAO dao = CarFormDAO.getInstance();
		CarformVO vo = new CarformVO();
		String path = req.getSession().getServletContext().getRealPath("fileFolder");// 절대경로

		System.out.println(path);
		int size = 1024 * 1024 * 10; // 저장가능한 파일 크기
		String file = ""; // 업로드 한 파일의 이름(이름이 변경될수 있다)
		String originalFile = ""; // 이름이 변경되기 전 실제 파일 이름

		try {
			String save_file_name = id + "_" + (dao.nextval() + 1);//파일명규칙 
																	
			System.out.println(save_file_name);
			MultipartRequest multi = new MultipartRequest(req, path, size, "UTF-8",
					new FileUploadRename(save_file_name));

			String carname = multi.getParameter("carname");
			String carNum = multi.getParameter("carNum");
			String carBth = multi.getParameter("carBth");
			String carKm = multi.getParameter("carKm");
			String carKmde = multi.getParameter("carKm_de");
			String carGas = multi.getParameter("carGas");
			String carGasde = multi.getParameter("carGas_de");
			String carTune = multi.getParameter("carTune");
			String carTunede = multi.getParameter("carTune_de");
			String carHis = multi.getParameter("carHis");
			String carHisde = multi.getParameter("carHis_de");
			String carColor = multi.getParameter("carColor");
			String carColorde = multi.getParameter("carColor_de");
			String carUse = multi.getParameter("carUse");
			String carUsede = multi.getParameter("carUse_de");


			Enumeration files = multi.getFileNames();
			String str = (String) files.nextElement(); // 파일 이름을 받아와 string으로 저장

			file = multi.getFilesystemName(str); // 업로드 된 파일 이름 가져옴
			originalFile = path + "/" + multi.getOriginalFileName(str); // 원래의 파일이름 가져옴

			vo.setCarId(dao.nextval() + 1);
			vo.setCarname(carname);
			vo.setCarNum(carNum);
			vo.setCarBth(carBth);
			vo.setCarColor(carColor);
			vo.setCarColor_de(carColorde);
			vo.setCarGas(carGas);
			vo.setCarGas_de(carGasde);
			vo.setCarKm(carKm);
			vo.setCarKm_de(carKmde);
			vo.setCarTune(carTune);
			vo.setCarTune_de(carTunede);
			vo.setCarHis(carHis);
			vo.setCarHis_de(carHisde);
			vo.setCarUse(carUse);
			vo.setCarUse_de(carUsede);
			vo.setId(id);
		} catch (Exception e) {
			e.printStackTrace();
		}

		vo.setPath(file);

		int wResult = dao.write(vo);
		System.out.println(wResult);
		resp.sendRedirect("/GSRationalCar/carlist.do?num=1");
	}

}
