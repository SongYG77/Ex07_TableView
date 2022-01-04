//
//  ViewController.swift
//  Ex07_TableView
//
//  Created by 송윤근 on 2022/01/04.
//




import UIKit

class ViewController: UIViewController,  UITableViewDelegate,  UITableViewDataSource {
    
    
   
    

    @IBOutlet weak var TableViewmain: UITableView!
    
    let names :[String] = [
        "아이린", "태연", "아이유", "유나", "수지"
    ]
    let arts : [String] = [
        "빨간맛, 레벨업", "호텔델루나, 사계", "좋은날, 사계", "효리네 민박, 바람이 불면", "건축학개론"
    ]
    
    let imgs : [String] = [
        "img1.png", "img2.png", "img3.png", "img4.png", "img5.png",
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        
        //일반 데이터 뷰나 테이블 뷰도 내가 처리하겟다.
        TableViewmain.delegate = self
        //테이블뷰의 일반 이벤트 처리
        TableViewmain.dataSource = self
        //테이블뷰의 데이터소스 처리
        
        
    }
    
    //MARK: - 데이터소스
    //다음 마크를 사용하면 위에 네비게이션으로 MARK부분 이동가능.
    //Section : Grouped TableView
    
    //한 섹션에서 아이템 수를 리턴해준다(줄수)
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return names.count
    }
    
    //테이블뷰 셀의 객체(인스턴스)를 리턴해준다.'
    //실질적으로 셀에 값을 넣어주는 부분인것 같다.
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        //indexPath. :단일 섹션이라 section0
        //           : row는 0,1,2,3,4(다섯개)
        
        
        let cell = self.TableViewmain.dequeueReusableCell(withIdentifier: "MyTableViewCell", for: indexPath) as! MyTableViewCell
        
        //셀 지정이 끝났으면 각 셀에 이제 데이터를 넣어줘야 한다. indexpath만큼 반복이 되며 다음 코드가 실행될텐데.
        //indexPath.row가 현재 반복되는 수라고 생각하면 될 것 같음. 그래서 그것을 인덱스로 배열값을 가져오는 것이다.
        cell.Idolimgview?.image = UIImage(named: imgs[indexPath.row])
        cell.idolnamelable.text = names[indexPath.row]
        cell.artlable.text = arts[indexPath.row]
        
        //기본 선택 효과를 제거
        cell.selectionStyle = .none
        return cell
    }
    
    //MARK: - 일반 이벤트
    //셀의 높이값 tableviewheight까지 쳤음
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    
    //tableviewdidselectrowat
    //셀에 대한 클릭 이벤트.
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("선택된 셀의 위치 : 섹션-\(indexPath.section)")
        print("선택된 셀의 위치 : 로우-\(indexPath.row)")
    
    }

}

