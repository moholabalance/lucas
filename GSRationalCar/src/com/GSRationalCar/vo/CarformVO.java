package com.GSRationalCar.vo;

import java.sql.Timestamp;

public class CarformVO {
	private int CarId =1, CarHit=0; // 매물번호, 조회수, 차량연식, 차량번호 ex) 33오 1234
	private String CarBth, Carname,id, CarKm, CarGas, CarTune, CarHis, CarColor, CarUse, CarKm_de, CarGas_de, CarTune_de, CarHis_de, CarColor_de, CarUse_de,CarNum,path; 

		//판매자명, 주행거리, 배출가스, 튜닝, 사고이력, 색상, 용도, 주행거리세부, 배출가스 세부, 튜닝세부, 사고이력세부, 차량색상세부, 차량용도세부,차량번호,이미지경로
		private Timestamp CarDate;//글작성날
		
	
	public int getCarId() {
			return CarId;
		}


		public void setCarId(int carId) {
			CarId = carId;
		}


		public int getCarHit() {
			return CarHit;
		}


		public void setCarHit(int carHit) {
			CarHit = carHit;
		}


		public String getCarBth() {
			return CarBth;
		}


		public void setCarBth(String carBth) {
			CarBth = carBth;
		}


		public String getCarname() {
			return Carname;
		}


		public void setCarname(String carname) {
			Carname = carname;
		}


		public String getId() {
			return id;
		}


		public void setId(String id) {
			this.id = id;
		}


		public String getCarKm() {
			return CarKm;
		}


		public void setCarKm(String carKm) {
			CarKm = carKm;
		}


		public String getCarGas() {
			return CarGas;
		}


		public void setCarGas(String carGas) {
			CarGas = carGas;
		}


		public String getCarTune() {
			return CarTune;
		}


		public void setCarTune(String carTune) {
			CarTune = carTune;
		}


		public String getCarHis() {
			return CarHis;
		}


		public void setCarHis(String carHis) {
			CarHis = carHis;
		}


		public String getCarColor() {
			return CarColor;
		}


		public void setCarColor(String carColor) {
			CarColor = carColor;
		}


		public String getCarUse() {
			return CarUse;
		}


		public void setCarUse(String carUse) {
			CarUse = carUse;
		}


		public String getCarKm_de() {
			return CarKm_de;
		}


		public void setCarKm_de(String carKm_de) {
			CarKm_de = carKm_de;
		}


		public String getCarGas_de() {
			return CarGas_de;
		}


		public void setCarGas_de(String carGas_de) {
			CarGas_de = carGas_de;
		}


		public String getCarTune_de() {
			return CarTune_de;
		}


		public void setCarTune_de(String carTune_de) {
			CarTune_de = carTune_de;
		}


		public String getCarHis_de() {
			return CarHis_de;
		}


		public void setCarHis_de(String carHis_de) {
			CarHis_de = carHis_de;
		}


		public String getCarColor_de() {
			return CarColor_de;
		}


		public void setCarColor_de(String carColor_de) {
			CarColor_de = carColor_de;
		}


		public String getCarUse_de() {
			return CarUse_de;
		}


		public void setCarUse_de(String carUse_de) {
			CarUse_de = carUse_de;
			
		}


		public String getCarNum() {
			return CarNum;
		}


		public void setCarNum(String carNum) {
			CarNum = carNum;
		}


		public String getPath() {
			return path;
		}


		public void setPath(String path) {
			this.path = path;
		}


		public Timestamp getCarDate() {
			return CarDate;
		}


		public void setCarDate(Timestamp carDate) {
			CarDate = carDate;
		}


	@Override
	public String toString() {
		StringBuilder builder = new StringBuilder();
		builder.append("CarformVO [CarId=").append(CarId).append(", CarHit=").append(CarHit)
				.append(", CarName=").append(Carname).append(", CarBth=").append(CarBth)
				.append(", CarNum=").append(CarNum).append(", Id=").append(id).append(",CarKm")
				.append(CarKm).append(", CarGas=").append(CarGas).append(",CarTune=").append(CarTune)
				.append(", CarHis=").append(CarHis).append(", CarColor=").append(CarColor).append(", CarUse=")
				.append(CarUse).append(", CarKm_de=").append(CarKm_de).append(", CarGas_de=").append(CarGas_de).append(",CarTune_de=")
				.append(CarTune_de).append(", CarHis_de=").append(CarHis_de).append(", CarColor_de=").append(CarColor_de).append(", CarUse_de=")
				.append(CarUse_de).append(",CarDate=").append(CarDate).append(",Path=").append(path).append("]");
		return builder.toString();
	}
}
