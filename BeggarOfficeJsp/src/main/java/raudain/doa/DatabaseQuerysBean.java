package raudain.doa;

/**
 * Helper class for externalization of queries
 */
public class DatabaseQuerysBean {
	
	private String workerList = "";
	private String updateWorker = "";
	private String workerNameList = "";
	
	public String getWorkerList() {
		return workerList;
	}
	
	public void setWorkerList(String workerList) {
		this.workerList = workerList;
	}
	
	public String getUpdateWorker() {
		return updateWorker;
	}
	
	public void setUpdateWorker(String updateWorker) {
		this.updateWorker = updateWorker;
	}
	
	public String getWorkerNameList() {
		return workerNameList;
	}
	
	public void setWorkerNameList(String workerNameList) {
		this.workerNameList = workerNameList;
	}
}
