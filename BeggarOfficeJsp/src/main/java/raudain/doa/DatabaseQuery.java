package raudain.doa;

/**
 * Helper class for externalization of queries
 */
public class DatabaseQuery {
	
	private String listWorkers = "";
	private String updateWorker = "";
	
	public String getlistWorkers() {
		return listWorkers;
	}

	public void setlistWorkers(String listWorkers) {
		this.listWorkers = listWorkers;
	}
	
	public String getUpdateWorker() {
		return updateWorker;
	}

	public void setUpdateWorker(String updateEvent) {
		this.updateWorker = updateEvent;
	}
}
