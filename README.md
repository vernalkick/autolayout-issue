# Autolayout problem

I'd like to have an image view that has a fixed width and a height that is a multiplier of that width inside a TableView Cell.

![](http://cl.ly/image/0l230h3x2Z0a/1)

These are the constraints I've set up:

```swift
imgView.widthAnchor.constraintEqualToConstant(60)!,
imgView.heightAnchor.constraintEqualToAnchor(imgView.widthAnchor, multiplier: 1.5)!,
imgView.topAnchor.constraintEqualToAnchor(contentView.topAnchor, constant: 15)!,
imgView.bottomAnchor.constraintEqualToAnchor(contentView.bottomAnchor, constant: -15)!,
imgView.leadingAnchor.constraintEqualToAnchor(contentView.layoutMarginsGuide.leadingAnchor)!
```

When I run the app in the simulator, I get this error:

```
2015-06-21 20:35:15.276 TestProject[8804:424319] Unable to simultaneously satisfy constraints.
	Probably at least one of the constraints in the following list is one you don't want. Try this: (1) look at each constraint and try to figure out which you don't expect; (2) find the code that added the unwanted constraint or constraints and fix it. (Note: If you're seeing NSAutoresizingMaskLayoutConstraints that you don't understand, refer to the documentation for the UIView property translatesAutoresizingMaskIntoConstraints) 
(
    "<NSLayoutConstraint:0x7ff803d70950 H:[UIImageView:0x7ff803d760a0(60)]>",
    "<NSLayoutConstraint:0x7ff803d70a20 UIImageView:0x7ff803d760a0.height == 1.5*UIImageView:0x7ff803d760a0.width>",
    "<NSLayoutConstraint:0x7ff803d73630 V:|-(15)-[UIImageView:0x7ff803d760a0]   (Names: '|':UITableViewCellContentView:0x7ff803d765e0 )>",
    "<NSLayoutConstraint:0x7ff803d18b50 UIImageView:0x7ff803d760a0.bottom == UITableViewCellContentView:0x7ff803d765e0.bottom - 15>",
    "<NSLayoutConstraint:0x7ff803f49870 'UIView-Encapsulated-Layout-Height' V:[UITableViewCellContentView:0x7ff803d765e0(59.5)]>"
)

Will attempt to recover by breaking constraint 
<NSLayoutConstraint:0x7ff803d18b50 UIImageView:0x7ff803d760a0.bottom == UITableViewCellContentView:0x7ff803d765e0.bottom - 15>

Make a symbolic breakpoint at UIViewAlertForUnsatisfiableConstraints to catch this in the debugger.
The methods in the UIConstraintBasedLayoutDebugging category on UIView listed in <UIKit/UIView.h> may also be helpful.
```

Any ideas?
