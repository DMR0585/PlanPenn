# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
@CIS = Major.create(name: "Computer Science (CIS)", total_required:40)

@Math = @CIS.curriculum_fields.create(name:"Math" , total_required:6)
@NatSci = @CIS.curriculum_fields.create(name:"Natural Science" , total_required:4)
@Eng = @CIS.curriculum_fields.create(name:"Engineering" , total_required:14)
@TechElec = @CIS.curriculum_fields.create(name:"Tech Elective" , total_required:6)
@SSandH = @CIS.curriculum_fields.create(name:"Social Sciences and Humanities" , total_required:7)
@FreeElec =@CIS.curriculum_fields.create(name:"Free Elective" , total_required:3)

puts @Math.requirements.create(name: "MATH 104", credits: 1)
@Math.requirements.create(name: "MATH 114", credits: 1)
@Math.requirements.create(name: "CIS 160", credits: 1)
@Math.requirements.create(name: "CIS 261 or ESE 301 or ENM 231 or STAT 430", credits: 1)
@Math.requirements.create(name: "Math Elective", credits: 1)
@Math.requirements.create(name: "Math Elective", credits: 1)

@NatSci.requirements.create(name: "PHYS 140 or PHYS 150", credits: 1)
@NatSci.requirements.create(name: "Natural Science", credits: 1)
@NatSci.requirements.create(name: "Natural Science/Lab Requirement", credits: 1)

@Eng.requirements.create(name:"CIS 110", credits: 1)
@Eng.requirements.create(name:"CIS 120", credits: 1)
@Eng.requirements.create(name:"CIS 121", credits: 1)
@Eng.requirements.create(name:"CIS 240", credits: 1)
@Eng.requirements.create(name:"CIS 262", credits: 1)
@Eng.requirements.create(name:"CIS 320", credits: 1)
@Eng.requirements.create(name:"One of: CIS 277, CIS 341, CIS 450, CIS 455, CIS 553, ESE 350, CIS 350", credits: 1)
@Eng.requirements.create(name:"CIS 371", credits: 1)
@Eng.requirements.create(name:"CIS 380", credits: 1)
@Eng.requirements.create(name:"CIS 400", credits: 1)
@Eng.requirements.create(name:"CIS 401", credits: 1)
@Eng.requirements.create(name:"CIS Elective", credits: 1)
@Eng.requirements.create(name:"CIS Elective", credits: 1)
@Eng.requirements.create(name:"CIS Elective", credits: 1)

@TechElec.requirements.create(name:"Tech Elective (Engineering)", credits: 1)
@TechElec.requirements.create(name:"Tech Elective (Engineering)", credits: 1)
@TechElec.requirements.create(name:"Tech Elective", credits: 1)
@TechElec.requirements.create(name:"Tech Elective", credits: 1)
@TechElec.requirements.create(name:"Tech Elective", credits: 1)
@TechElec.requirements.create(name:"Tech Elective", credits: 1)

@SSandH.requirements.create(name:"Social Science", credits: 1)
@SSandH.requirements.create(name:"Social Science", credits: 1)
@SSandH.requirements.create(name:"Humanities", credits: 1)
@SSandH.requirements.create(name:"Humanities", credits: 1)
@SSandH.requirements.create(name:"SS or H", credits: 1)
@SSandH.requirements.create(name:"SS, H, or TBS", credits: 1)
@SSandH.requirements.create(name:"SS, H, or TBS", credits: 1)

@FreeElec.requirements.create(name:"Free Elective", credits: 1)
@FreeElec.requirements.create(name:"Free Elective", credits: 1)
@FreeElec.requirements.create(name:"Free Elective", credits: 1)





