package raudain.doa;

/**
 * Helper class for externalization of queries
 */
public class DatabaseQuerysBean {
	
	private String lastRoom = "";
	private String insert = "";
	
	private String workerListByRoom = "";
	private String workerListLeft = "";
	private String workerListMiddle = "";
	private String workerListRight = "";
	private String workerListByCost = "";
	private String workerNameList = "";
	private String updateWorker = "";
	
	public String getLastRoom() {
		return lastRoom;
	}
	
	public void setLastRoom(String lastRoom) {
		this.lastRoom = lastRoom;
	}
	
	public String getInsert() {
		return insert;
	}
	
	public void setInsert(String insert) {
		this.insert = insert;
	}
	
	public String getWorkerListByRoom() {
		return workerListByRoom;
	}
	
	public void setWorkerListByRoom(String workerListByRoom) {
		this.workerListByRoom = workerListByRoom;
	}
	
	public String getWorkerListLeft() {
		return workerListLeft;
	}
	
	public void setWorkerListLeft(String workerListLeft) {
		this.workerListLeft = workerListLeft;
	}
	
	public String getWorkerListMiddle() {
		return workerListMiddle;
	}
	
	public void setWorkerListMiddle(String workerListMiddle) {
		this.workerListMiddle = workerListMiddle;
	}
	
	public String getWorkerListRight() {
		return workerListRight;
	}
	
	public void setWorkerListRight(String workerListRight) {
		this.workerListRight = workerListRight;
	}
	
	public String getWorkerListByCost() {
		return workerListByCost;
	}
	
	public void setWorkerListByCost(String workerListByCost) {
		this.workerListByCost = workerListByCost;
	}
	
	public String getWorkerNameList() {
		return workerNameList;
	}
	
	public void setWorkerNameList(String workerNameList) {
		this.workerNameList = workerNameList;
	}
	
	public String getUpdateWorker() {
		return updateWorker;
	}
	
	public void setUpdateWorker(String updateWorker) {
		this.updateWorker = updateWorker;
	}
	
	public String getWorker() {
		return updateWorker;
	}
	
	public void setWorker(String updateWorker) {
		this.updateWorker = updateWorker;
	}
	
}
