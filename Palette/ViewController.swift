import UIKit

class ViewController: UIViewController {

    @IBOutlet var viewColorPalette: UIView!
    
    @IBOutlet var redSlider: UISlider!
    @IBOutlet var redColorValue: UILabel!
    
    @IBOutlet var greenSlider: UISlider!
    @IBOutlet var greenColorValue: UILabel!
    
    
    @IBOutlet var blueSlider: UISlider!
    @IBOutlet var blueColorValue: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        redSlider.minimumTrackTintColor = .red
        redColorValue.text = String(format: "%.2f", redSlider.value)
        
        greenSlider.minimumTrackTintColor = .green
        greenColorValue.text = String(format: "%.2f", greenSlider.value)

        blueSlider.minimumTrackTintColor = .blue
        blueColorValue.text = String(format: "%.2f", blueSlider.value)
    }

    @IBAction func redSliderAction() {
        redColorValue.text = String(format: "%.2f", redSlider.value)
        viewColorPalette.backgroundColor = UIColor(red: CGFloat(redSlider.value),
                                                   green: CGFloat(greenSlider.value),
                                                   blue: CGFloat(blueSlider.value),
                                                   alpha: 1.0)
    }
    
    
    @IBAction func greenSliderAction() {
        greenColorValue.text = String(format: "%.2f", greenSlider.value)
        viewColorPalette.backgroundColor = UIColor(red: CGFloat(redSlider.value),
                                                   green: CGFloat(greenSlider.value),
                                                   blue: CGFloat(blueSlider.value),
                                                   alpha: 1.0)
    }
    
    
    @IBAction func blueSliderAction() {
        blueColorValue.text = String(format: "%.2f", blueSlider.value)
        viewColorPalette.backgroundColor = UIColor(red: CGFloat(redSlider.value),
                                                   green: CGFloat(greenSlider.value),
                                                   blue: CGFloat(blueSlider.value),
                                                   alpha: 1.0)
    }
    
}

