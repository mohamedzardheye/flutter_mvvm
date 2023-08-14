import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import '../resources/values_manager.dart';
import '../resources/assets_manager.dart';
import '../resources/strings_manager.dart';
import '../resources/color_manager.dart';

class OnBoardingView extends StatefulWidget {
  const OnBoardingView({super.key});

  @override
  State<OnBoardingView> createState() => _OnBoardingViewState();
}

class _OnBoardingViewState extends State<OnBoardingView> {


  late final List<SliderObject> _list = _getSliderData();

  final PageController  _pageController = PageController(initialPage: 0);

  int _currentIndex = 0;

  List<SliderObject> _getSliderData() => [
        SliderObject(AppStrings.onBoardingSubTitle1,
            AppStrings.onBoardingSubTitle1, ImageAssets.onBoardingLogo1),
        SliderObject(AppStrings.onBoardingSubTitle2,
            AppStrings.onBoardingSubTitle2, ImageAssets.onBoardingLogo2),
              SliderObject(AppStrings.onBoardingSubTitle1,
            AppStrings.onBoardingSubTitle1, ImageAssets.onBoardingLogo1)
      ];

  @override
  Widget build(BuildContext context) {
  
    return Scaffold(
      backgroundColor: colorManager.white,
      appBar: AppBar(
        backgroundColor: colorManager.white,
        elevation: appSize.s0,
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarColor: colorManager.white,
          statusBarBrightness: Brightness.dark,
          statusBarIconBrightness: Brightness.dark,
        ),
      ),
      body: PageView.builder(
          controller: _pageController,
          itemCount: _list.length,
          onPageChanged: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
          itemBuilder: (context, index) {
            return OnBoardingPage(_list[index]);
          }),
      bottomSheet: Container(
          color: colorManager.white,
          height: appSize.s100,
          child: Column(
            children: [
              Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                    onPressed: () {},
                    child:  Text(
                     AppStrings.skip,
                      // ignore: deprecated_member_use
                       style: Theme.of(context).textTheme.subtitle2,
                      textAlign: TextAlign.end,
                    ),
                    ),
                    ),
                    // adding layout for indicator and arrows
                    _getBottomSheetWidget()
              
            ],
          ),
          ),
    );
  }





Widget _getBottomSheetWidget(){
  return Container(
    color: colorManager.primary,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
         // left arrow
        Padding(padding: const EdgeInsets.all(appPadding.p14),
        child:GestureDetector(
          child:SizedBox(
            height:appSize.s20,
            width: appSize.s20,
            child: SvgPicture.asset(ImageAssets.leftArrowIc),
  
          ),
          onTap: (){
            // go to previous slide 
            _pageController.animateToPage(
                _getPreviousIndex(),
                duration:const Duration(milliseconds: durationConstant.d300) ,
                curve: Curves.bounceInOut);
  
          },
        ), 
        ),
  
    // circle indicator
    Row(
      children: [
      for(int i = 0; i < _list.length; i++)
        Padding(padding: const EdgeInsets.all(appPadding.p8),
        child: _getProperCircle(i),)
      ],
    ),
  
  
  
  
      //Right Arrow
         Padding(padding: const EdgeInsets.all(appPadding.p14),
        child:GestureDetector(
          child:SizedBox(
            height:appSize.s20,
            width: appSize.s20,
            child: SvgPicture.asset(ImageAssets.rightArrowIc),
  
          ),
          onTap: (){
               _pageController.animateToPage(
                _getNextIndex(),
                duration:const Duration(milliseconds: durationConstant.d300) ,
                curve: Curves.bounceInOut);
  
          
          },
        ), 
        ),
      ],
    ),
  );
} // end widget 




int _getPreviousIndex(){
  int previousIndex = _currentIndex -- ;
  if(previousIndex == -1 ){
    _currentIndex = _list.length -1; // infinte loop to thelenght of slider list

  }
  return _currentIndex;
}

int _getNextIndex(){
  int nextIndex = _currentIndex ++ ;
  if(nextIndex >= _list.length){
    _currentIndex = 0; // infinte loop to go first slider

  }
  return _currentIndex;
}

Widget _getProperCircle(int index){

  if(index == _currentIndex){
    return SvgPicture.asset(ImageAssets.hollowCircleIc); // selected Slider
  }
  else {
    return SvgPicture.asset(ImageAssets.solidCircleIc); // un Selected Slider 
  }
}
}

class OnBoardingPage extends StatelessWidget {
  final SliderObject _sliderObject;

  const OnBoardingPage(this._sliderObject, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        const SizedBox(
          height: appSize.s40,
        ),
        Padding(
            padding: const EdgeInsets.all(appPadding.p8),
            child: Text(
              _sliderObject.title,
              textAlign: TextAlign.center,
              // ignore: deprecated_member_use
              style: Theme.of(context).textTheme.headline1,
            )),
        Padding(
            padding: const EdgeInsets.all(appPadding.p8),
            child: Text(
              _sliderObject.subTitle,
              textAlign: TextAlign.center,
              // ignore: deprecated_member_use
              style: Theme.of(context).textTheme.subtitle1,
            )),
        const SizedBox(
          height: appSize.s60,
        ),
        SvgPicture.asset(_sliderObject.image)
      ],
    );
  }
}







class SliderObject {
  String title;
  String subTitle;
  String image;

  SliderObject(this.title, this.subTitle, this.image);
}
