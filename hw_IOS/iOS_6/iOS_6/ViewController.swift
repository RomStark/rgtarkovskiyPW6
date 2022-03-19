import UIKit
import MyLogger1
import MyLogger2
//import MyLogger3

class ViewController: UIViewController {
    
    var buttonFramework: UIButton!
    var buttonPackage: UIButton!
    var buttonPod: UIButton!
    var buttonCarthege: UIButton!
    var stackView: UIStackView!

    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        

        buttonFramework = setupButton(text: "Log (framework)")
        buttonFramework.addTarget(self, action: #selector(buttonFrameworkPressed), for: .touchUpInside)
        buttonPackage = setupButton(text: "Log (swift package)")
        buttonPackage.addTarget(self, action: #selector(buttonPackagePressed), for: .touchUpInside)
        buttonPod = setupButton(text: "Log (pod)")
        buttonPod.addTarget(self, action: #selector(buttonPodPressed), for: .touchUpInside)
        buttonCarthege = setupButton(text: "Log (carthage)")
        setupStack()
        
    }
    
    @objc
    func buttonFrameworkPressed(){
        MyLogger1.log("hello, world")
    }
    
    @objc
    func buttonPackagePressed(){
        MyLogger2.log("hello, world")
    }
    
    @objc
    func buttonPodPressed(){
        //MyLogger3.log("hello, world")
    }
    

    func setupButton(text: String) -> UIButton {
        let button = UIButton()
        button.setTitle(text, for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitleColor(.blue, for: .normal)
        return button
    }

    func setupStack() {
        stackView = UIStackView()
        stackView.axis = .vertical
        stackView.distribution = .fillEqually

        view.addSubview(stackView)
        stackView.addArrangedSubview(buttonFramework)
        stackView.addArrangedSubview(buttonPackage)
        stackView.addArrangedSubview(buttonPod)
        stackView.addArrangedSubview(buttonCarthege)

        stackView.pinTop(to: view.centerYAnchor)
        stackView.pinWidth(to: view.widthAnchor)
    }


}
