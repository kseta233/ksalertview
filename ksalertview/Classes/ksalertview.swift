
import UIKit

@objc public final class KSAlertView : NSObject {
    /**
     A builder function to make an UIAlertController.
     
     - parameter title:   Title will appear in AlertView
     - parameter message: Message in alert view
     - parameter style:   You can choose .ActionSheet or .Alert
     
     - returns: an UIAlertController, which can be config action button by DSL function below.
     */
    @objc public static func alertPopUp(title: String? = nil, message: String? = nil, style: UIAlertController.Style = .alert) -> UIAlertController {
        let alert = UIAlertController(
            title: title,
            message: message,
            preferredStyle: style
        )
        return alert
    }
    
}

extension UIAlertController {
    
    /**
     It add a cancel button into Alert View, which will close the Alert when touch on that.
     
     - parameter title:   Label of cancel button, integrated with LocalizedString.
     - parameter handler: Closure which will be notified when cancel button be tapped.
     
     - returns: an UIAlertController
     */
    public func willCancel(title: String = "Cancel", handler: ((UIAlertAction) -> ())? = nil) -> UIAlertController {
        return will(title: title, style: .cancel, handler: handler)
    }
    
    public func willOK(title: String = "OK", handler: ((UIAlertAction) -> ())? = nil) -> UIAlertController {
        return will(title: title, style: .cancel, handler: handler)
    }
    
    /**
     Add a button into Alert View.
     
     - parameter title:   Label of button. Integrated with LocalizedString
     - parameter style:   It can be .Default, .Cancel or .Destructive
     - parameter handler: Be notified when this button be tapped
     
     - returns: an UIAlertController
     */
    public func will(title: String, style: UIAlertAction.Style = .default, handler: ((_ alertAction: UIAlertAction) -> Void)? = nil) -> UIAlertController {
        self.addAction(UIAlertAction(title: title, style: style, handler: handler))
        return self
    }
    
    /**
     Show the alert view on screen.
     
     - parameter viewController: The ViewController what you want to show AlertView above.
     - parameter animated:       Be true if you want to animate the presenting of AlertView
     - parameter completion:     Be notified when presentation finished
     */
    public func present(on viewController: UIViewController, animated: Bool = true, completion: (() -> Void)? = nil) {
        viewController.present(self, animated: animated, completion: completion)
    }
}

