package raudain.doa;

/**
 * Helper class for externalization of queries
 */
public class DatabaseQuerysBean {
	
	private String lastRoom = "";
	private String insert = "";
	private String workerList = "";
	private String workerNameList = "";
	private String updateWorker = "";
	
	public String getLastRoom() {
		return lastRoom;
	}

	public void setLastRoom(String nextRoom) {
		this.lastRoom = nextRoom;
	}
	
	public String getInsert() {
		return insert;
	}
	
	public void setInsert(String insert) {
		this.insert = insert;
	}
	
	public String getWorkerList() {
		return workerList;
	}
	
	public void setWorkerList(String workerList) {
		this.workerList = workerList;
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
}
