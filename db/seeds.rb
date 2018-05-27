# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# default company, administrator
petrobras = Company.create name: 'Petrobras', contract_number: 123456789
# default administrator
User.create first_name: 'sysadmin', last_name: 'Petrobras', email: 'sysadmin@petrobras.com', password: 123456, kind: :admin, status: :active, company: petrobras


# for tests
cooec = Company.create name: 'Cooec', contract_number: 987654321
jurong = Company.create name: 'Jurong', contract_number: 1029384756
altus = Company.create name: 'Altus', contract_number: 9627351648
User.create first_name: 'Eduardo', last_name: 'Cypriano', email: 'eduardo@cooec.com', password: 123456, kind: :default, status: :active, company: cooec
User.create first_name: 'Munique', last_name: 'Araújo', email: 'munique@altus.com', password: 123456, kind: :default, status: :active, company: altus
User.create first_name: 'Guilherme', last_name: 'Cypriano', email: 'guilherme@altus.com', password: 123456, kind: :default, status: :active, company: altus
User.create first_name: 'Judith', last_name: 'Cypriano', email: 'judith@jurong.com', password: 123456, kind: :default, status: :active, company: jurong
User.create first_name: 'Victor Hugo', last_name: 'Cypriano', email: 'vh@jurong.com', password: 123456, kind: :default, status: :inactive, company: jurong
Discipline.create name: 'Automation'
Discipline.create name: 'Estructure'
Discipline.create name: 'Electrical'
Discipline.create name: 'Safety'
Discipline.create name: 'Instrumentation'
Discipline.create name: 'Process'
