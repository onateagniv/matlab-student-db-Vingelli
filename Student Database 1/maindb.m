db = StudentDB;
size= 3;
db = db.init(size);

number_of_users = 4;
for i=1:number_of_users
   fprintf('**************** \n')
    db = db.createUser();
end

db.showStudents();
file_name = 'db.txt'
db.save_db_to_file(file_name)
db.load_from_file(file_name)