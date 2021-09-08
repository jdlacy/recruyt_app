//
//  Tips_Resume.swift
//  recruyt_app
//
//  Created by Student Account on 8/31/21.
//

import SwiftUI

struct Tips: Identifiable {
    var id = UUID()
    var info:String
    var period:Period
}

enum Period: String, CaseIterable {
    case applicationTips = "Application Tips"
    case resumeTips = "Resume Building"
}

struct Tips_Resume: View {
    var tips = [
        Tips(info: "Review job descriptions", period: .applicationTips),
        Tips(info: "No need to fit 100% of job requirments, shoot for meeting 80%", period: .applicationTips),
        Tips(info: "Indeed is a vast site with lots of postings", period: .applicationTips),
        Tips(info: "The more you apply the better chances of getting a call back", period: .applicationTips),
        Tips(info: "Might not get the first job you apply for, continue trying!", period: .applicationTips),
        Tips(info: "Build a resume to match the job posting, when applicable match keywords from the posting in the resume", period: .resumeTips),
        Tips(info: "Be sure to include relevant work history to the job posting", period: .resumeTips),
        Tips(info: "Internships are a great way to showcase work done", period: .resumeTips),
        Tips(info: "Do not include likes and hobbies on the resume, if it is job important put that on the cover letter", period: .resumeTips),
        Tips(info: "Resume should be 1 page, keep it concise and neat.  Bullet points instead of sentances.", period: .resumeTips),
        Tips(info: "See some sample resumes here (inset link here?)", period: .resumeTips)
        
    ]
    var body: some View {
        
        List{
            ForEach(Period.allCases, id: \.rawValue) { period in Section(header: Text(period.rawValue)) {
                    ForEach(tips.filter { $0.period == period }) { tips in
                        VStack {
                            Text(tips.info)
                            //Text(tips.period.rawValue)
                        }
                    }
                }
            }
        }
    }
    
    
}

struct Tips_Resume_Previews: PreviewProvider {
    static var previews: some View {
        Tips_Resume()
    }
}
