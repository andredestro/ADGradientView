//
//  GradientView.swift
//  ADGradientView
//
//  Created by André Felipe Destro on 29/11/18.
//

import UIKit

@IBDesignable class GradientView: UIView {
    
    @IBInspectable var firstColor: UIColor = UIColor.clear {
        didSet {
            updateLayerColor()
        }
    }
    
    @IBInspectable var secondColor: UIColor = UIColor.clear {
        didSet {
            updateLayerColor()
        }
    }
    
    override public class var layerClass: Swift.AnyClass {
        return CAGradientLayer.self
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        updateLayerColor()
    }
    
    private func updateLayerColor() {
        guard let gradientLayer = self.layer as? CAGradientLayer else { return }
        gradientLayer.colors = [
            firstColor.cgColor,
            secondColor.cgColor
        ]
    }
}
