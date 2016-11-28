classroom = {
    
    desk1: {
        student_name: 'Chet Manly',
        subject_textbooks: {
            Biology: 2,
            Mathematics: 4
        },
        writing_instruments: [
            "G2 Pilot Pens", 
            "Mechanical Pencils"
        ]
    },
    
    desk2: {
        student_name: 'Rip Riley',
        subject_textbooks: {
            Biology: 2,
            Geography: 2,
            Physics: 3
        },
        writing_instruments: [
            "Bic Pens", 
            "Mechanical Pencils",
            "A compass"
        ]
    },

    desk3: {
        student_name: 'Pam Poovey',
        subject_textbooks: {
            Agriculture: 5,
            Mathematics: 1,
            Art:2,
            Chemistry: 3
        },
        writing_instruments: [
            "Uniball Pens", 
            "Mechanical Pencils",
            "Oil Pastels"
        ]
    },

    desk4: {
        student_name: 'Ray Gillete',
       
        subject_textbooks: {
            Calligraphy: 2,
            History: 4,
            English: 3
        },
        writing_instruments: [
            "G2 Pilot Pens", 
            "Mechanical Pencils",
            "Fountain Pens"
        ]
    }
    
}

#Number of biology textbooks in Rip Riley's desk?
p classroom[:desk2][:subject_textbooks][:Biology]

#What is Ray's favorite writing instrument?
p classroom[:desk4][:writing_instruments][2]

#Who sits at desk #1?
p classroom[:desk1][:student_name]

#How many subjects is Pam Poovey currently studying?
p classroom[:desk3][:subject_textbooks].length