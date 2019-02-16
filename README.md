# Scratch-Card

Scratch card view built in native Swift / iOS

## Usage

### To get progress updates  

```
@IBOutlet weak var scratchCard: ScratchCard!

scratchCard.scratchDelegate = self 

```

Implement methods

``` extension ViewController:ScratchDelegate {
     func scratch(percentage value: Int) {
    
     foo(value)
    }
```
### Scratch image can you added through code  and storyboard both

```
scratchCard.scratchImage = UIImage("YOUR-IMAGE")
```


![](https://github.com/bhavin250495/Scratch-Card/blob/master/video.gif)
