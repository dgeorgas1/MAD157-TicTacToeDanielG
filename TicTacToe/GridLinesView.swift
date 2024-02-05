//
//  GridLinesView.swift
//  TicTacToe
//
//  Created by student on 2/4/24.
//

import UIKit

class GridLinesView: UIView {
    var numberOfRows: Int
    var numberOfColumns: Int

    init(frame: CGRect, numberOfRows: Int, numberOfColumns: Int) {
        self.numberOfRows = numberOfRows
        self.numberOfColumns = numberOfColumns
        super.init(frame: frame)
        backgroundColor = UIColor.clear
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func draw(_ rect: CGRect) {
        super.draw(rect)

        let lineColor = UIColor.black
        let lineWidth: CGFloat = 2.0

        let cellWidth = rect.width / CGFloat(numberOfColumns)
        let cellHeight = rect.height / CGFloat(numberOfRows)

        // Create vertical lines
        for i in 1..<numberOfColumns {
            let xPos = cellWidth * CGFloat(i)
            let path = UIBezierPath()
            path.move(to: CGPoint(x: xPos, y: 0))
            path.addLine(to: CGPoint(x: xPos, y: rect.height))
            lineColor.setStroke()
            path.lineWidth = lineWidth
            path.stroke()
        }

        // Create horizontal lines
        for i in 1..<numberOfRows {
            let yPos = cellHeight * CGFloat(i)
            let path = UIBezierPath()
            path.move(to: CGPoint(x: 0, y: yPos))
            path.addLine(to: CGPoint(x: rect.width, y: yPos))
            lineColor.setStroke()
            path.lineWidth = lineWidth
            path.stroke()
        }
    }
}
