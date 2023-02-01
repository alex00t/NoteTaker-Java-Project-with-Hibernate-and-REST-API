package NoteTaker_entity;
import java.util.Date;
import java.util.Random;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
@Entity
public class Note {

		@Id
		private int id;
		private String title;
		@Column (length = 10000)
		private String Content;
		private Date addDate;
		public int getId() {
			return id;
		}
		public void setId(int id) {
			this.id = id;
		}
		public String getTitle() {
			return title;
		}
		public void setTitle(String title) {
			this.title = title;
		}
		public String getContent() {
			return Content;
		}
		public void setContent(String content) {
			Content = content;
		}
		public Date getAddDate() {
			return addDate;
		}
		public void setAddDate(Date addDate) {
			this.addDate = addDate;
		}
		public Note(String title, String content, Date addDate) {
			super();
			this.id =new Random().nextInt(1000);
			this.title = title;
			Content = content;
			this.addDate = addDate;
			
		}
		public Note() {
			super();
			// TODO Auto-generated constructor stub
		}
		
		
		

}
