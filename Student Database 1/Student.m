classdef Student
    properties
        student_id = ""
        first_name = ""
        last_name = ""
    end

    methods
        function res = create_student(~, ~)
        function res = initStudent(currentObj)
            currentObj.student_id = input("What's the student ID of the user?", "s");
            currentObj.first_name = input("What's the first name of the user?","s");
            currentObj.last_name = input("What's the last name of the user?","s");
            res = currentObj;
        end
            function res = initStudent(currentObj)
                currentObj.student_id
        function res = showstudent(currentObj)
            fprintf("Student ID: %s \n", currentObj.student_id)
            fprintf("First Name: %s \n", currentObj.first_name)
            fprintf("Last Name: %s \n", currentObj.last_name)
            res = 1;
        end
        function res = setfirstname(currentObj, firstname)
            currentObj.first_name = firstname;
            currentObj.showstudent()
            res = currentObj;
        end
    end
end