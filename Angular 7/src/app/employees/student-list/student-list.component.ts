import { Component, OnInit } from '@angular/core';
import { StudentService } from 'src/app/shared/Student.service';
import { Student } from 'src/app/shared/Student.model';
import { ToastrService } from 'ngx-toastr';

@Component({
  selector: 'app-Student-list',
  templateUrl: './Student-list.component.html',
  styleUrls: ['./Student-list.component.css']
})
export class StudentListComponent implements OnInit {

  constructor(private service: StudentService,
    private toastr: ToastrService) { }

  ngOnInit() {
    this.service.refreshList();
  }

  populateForm(emp: Student) {
    this.service.formData = Object.assign({}, emp);
  }

  onDelete(id: number) {
    if (confirm('Are you sure to delete this record?')) {
      this.service.deleteStudent(id).subscribe(res => {
        this.service.refreshList();
        this.toastr.warning('Deleted successfully', 'EMP. Register');
      });
    }
  }

}
