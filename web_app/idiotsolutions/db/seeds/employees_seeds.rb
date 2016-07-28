#rake db:seed:employees_seeds

Employee.delete_all


#| first_name | varchar(255) | YES  |     | NULL    |                |
#| last_name  | varchar(255) | YES  |     | NULL    |                |
#| emp_no     | int(11)      | YES  |     | NULL    |                |
#| gender     | varchar(255) | YES  |     | NULL    |                |
#| contact_no | varchar(255) | YES  |     | NULL    |                |

Employee.create!(first_name: 'Edgar Angelo', last_name: 'Duro', emp_no: 13001, gender: 'Male', contact_no: '091998494949')
Employee.create!(first_name: 'Crisanto', last_name: 'Rol', emp_no: 13002, gender: 'Male', contact_no: '091998494949')
Employee.create!(first_name: 'Bobi', last_name: 'Tena', emp_no: 130003, gender: 'Male', contact_no: '091998494949')
Employee.create!(first_name: 'Arvin', last_name: 'Cudanin', emp_no: 13004, gender: 'Male', contact_no: '091998494949')
Employee.create!(first_name: 'Nerwin', last_name: 'Hernando', emp_no: 13005, gender: 'Male', contact_no: '091998494949')

