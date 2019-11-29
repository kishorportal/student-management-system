import { Component, OnInit } from '@angular/core';
import { StudentService } from 'src/app/shared/student.service';
import { NgForm } from '@angular/forms';
import { ToastrService } from 'ngx-toastr';

@Component({
  selector: 'app-student',
  templateUrl: './student.component.html',
  styleUrls: ['./student.component.css']
})
export class StudentComponent implements OnInit {

  constructor(private service: StudentService,
    private toastr: ToastrService) { }

  ngOnInit() {
    this.resetForm();
  }

  resetForm(form?: NgForm) {
    if (form != null)
      form.resetForm();
    this.service.formData = {
      StudentID: null,
      FullName: '',
      Gender: '',
      Grade: '',
      SchoolCode: '',
      SchoolName: 'DEFAULT'
    }
  }


  onSubmit(form: NgForm) {
    if (form.value.StudentID == null)
      this.insertRecord(form);
    else
      this.updateRecord(form);
  }

  insertRecord(form: NgForm) {
    this.service.postStudent(form.value).subscribe(res => {
      this.toastr.success('Inserted successfully', 'Student. Register');
      this.resetForm(form);
      this.service.refreshList();
    });
  }

  updateRecord(form: NgForm) {
    this.service.putStudent(form.value).subscribe(res => {
      this.toastr.info('Updated successfully', 'Student. Register');
      this.resetForm(form);
      this.service.refreshList();
    });

  }

}
