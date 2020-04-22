import UIKit
import PlaygroundSupport


// UIView и CALayer
let view = UIView()
view.layer.sublayers

// Координаты UIView
//let rect = CGRect(x: <#T##CGFloat#>, y: <#T##CGFloat#>, width: <#T##CGFloat#>, height: <#T##CGFloat#>)
//let point = CGPoint(x: <#T##CGFloat#>, y: <#T##CGFloat#>)
//let size = CGSize(width: <#T##CGFloat#>, height: <#T##CGFloat#>)
//let value = CGFloat(123)

// Frame vs bounds
let wrapView = UIView(frame: .init(x: 0, y: 0, width: 400, height: 400))
wrapView.backgroundColor = .white
let otherView = UIView(frame: .init(x: 50, y: 50, width: 300, height: 300))
otherView.backgroundColor = .green
wrapView.addSubview(otherView)

let viewForClipping = UIView(frame: .init(x: -50, y: -50, width: 200, height: 200))
otherView.addSubview(viewForClipping)
viewForClipping.backgroundColor = .orange
otherView.layer.masksToBounds = true

class CustomView: UIView {


    override func draw(_ rect: CGRect) {

    }

}

// Создание UIImage
//let image1 = UIImage(contentsOfFile: <#T##String#>)
//let image2 = UIImage(data: <#T##Data#>)
//let image3 = UIImage(named: <#T##String#>)
//let image4 = UIImage(systemName: <#T##String#>)


class CustomViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .orange

        let label = UILabel(frame: .init(x: 50, y: 50, width: 300, height: 100))
        label.text = "Hello World! Hello World! Hello World! Hello World! Hello World! Hello World! Hello World! "
        label.numberOfLines = 0
        label.backgroundColor = .black
        label.textColor = .white
        label.font = UIFont.systemFont(ofSize: 20, weight: .bold)
        view.addSubview(label)

        let button = UIButton(type: .system)
         button.frame = .init(x: 50, y: 200, width: 300, height: 50)
        button.setTitle("PressMe", for: .normal)
        button.setImage(UIImage(systemName: "book"), for: .normal)
        button.setImage(UIImage(systemName: "book.fill"), for: .highlighted)
        button.addTarget(self, action: #selector(buttonPressed), for: .touchUpInside)
        view.addSubview(button)

        let field = UITextField(frame: .init(x: 50, y: 300, width: 300, height: 50))
        field.borderStyle = .roundedRect
        view.addSubview(field)
    }

    @objc func buttonPressed() {
        print("button pressed")
    }

}

let window = UIWindow(frame: .init(x: 0, y: 0, width: 400, height: 400))
window.rootViewController = CustomViewController()
window.makeKeyAndVisible()

PlaygroundPage.current.liveView = window
PlaygroundPage.current.needsIndefiniteExecution = false
