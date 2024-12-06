classdef StudentDB
    properties
        size = 20
        studentList = [Student]
        number_of_students = 0
    end

    methods
        function res = init(currentObj, size)
            currentObj.size = size;
            currentObj.studentList(1:currentObj.size) = Student;
            res = currentObj;
        end

        function res = createUser(currentObj)
            if currentObj.number_of_students + 1 > currentObj.size
               fprintf("The database is full \n");
                res = currentObj;
            else
                student = Student;
                student = student.initStudent
                currentObj.studentList(currentObj.number_of_students + 1) = student.initstudent()
                currentObj.number_of_students = currentObj.number_of_students + 1
                res = currentObj;
            end
        end
        function res = showStudents(currentObj)
              for i = 1:currentObj.number_of_students
                  fprintf('*******************')
                  fprintf('User number %d \n', i);
                  currentObj.studentList(i).showStudent()
              end
              res=1;
        end
        function res= save_db_to_file(currentObj, file_name);
            fileID = fopen(file_name, 'w');
            for i = 1:currentObj.number_of_students
                student = currentObj.studentList(i)
                fprintf(fileID, '%s %s %s \n', student.student_id, student.first_name, student.last_name');
            end
            fclose(fileID);
            res = 1
        end
        end
        function res = load_from_file(CurrentObj, file_name)
            %load and create students information
            fileID = fopen(file_name, 'r');
            res = fscanf(fileID,'%d %d %d', [3 Inf])
            fclose(fileID);
    end
end