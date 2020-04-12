import UIKit
import KotlinersSwiftx

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        testScope()
        testExtract()
    }

    private func testScope() {
        let label = UILabel()
        label.frame = CGRect(x: 0, y: 0, width: 100, height: 100)
        label.text = "swift"
        label.textColor = .blue


        let label2 = UILabel().also { it in
            it.frame = CGRect(x: 0, y: 0, width: 100, height: 100)
            it.text = "swift"
            it.textColor = .blue
        }

        var label3: UILabel?
        label3 = UILabel()
        label3?.let { it in
            view.addSubview(it)
        }
    }

    private func testExtract() {
        let b: Int = 0
        // closure
        let c: String = {
            if(b == 1) {
                return "a"
            } else {
                return "b"
            }
        }()
        print("c = \(c)")

        // use extract function
        let d: String = extract {
            if(b == 1) {
                return "a"
            } else {
                return "b"
            }
        }
        print("d = \(d)")

        let e: String = extract {
            switch b {
            case (let bValue) where bValue == 0:
                return "0"
            case (let bValue) where bValue > 0:
                return "1"
            case (let bValue) where bValue < 0:
                return "-1"
            default:
                return "20"
            }
        }
        print("e = \(e)")
    }

    private func testTakeIf() {
        let name = "name : john"
        let nameLabel = name.takeIf { it in
            it.contains("name : ")
        } ?? "name : undefined"
        print(nameLabel)

        let name2: TestA = TestA(a: "abc", b: 123)
        let name2Label = name2.takeUnless { it in
            it.a == ""
        } ?? TestA(a: "de", b: 1)
        print(name2Label)

    }
}

class TestA  : StandardFunctionProtocol{
    let a: String
    let b: Int

    init(a: String, b: Int) {
        self.a = a
        self.b = b
    }
}
