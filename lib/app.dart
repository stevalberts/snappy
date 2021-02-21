import 'package:flutter/material.dart';
import 'package:universal_widget/universal_widget.dart';

UniversalWidget backPage = UniversalWidget(
  color: Colors.red[900],
);

UniversalWidget titleText = UniversalWidget(
  scale: Offset(0.0, 0.0),
);

UniversalWidget frontPage = UniversalWidget(
  top: 100.0,
  left: 5,
  right: 5,
  height: 800.0,
  width: 400.0,
  scale: Offset(0.0, 0.0),
  borderRadius: BorderRadius.only(
      topLeft: Radius.circular(20.0), topRight: Radius.circular(20.0)),
);

UniversalWidget indicator = UniversalWidget(
  left: 150,
  right: 150,
  bottom: 10,
  color: Colors.white,
  height: 5.0,
  width: 50.0,
  borderRadius: BorderRadius.circular(20.0),
);

UniversalWidget chatBtn = UniversalWidget(
  left: 20,
  bottom: 20,
  child: Icon(
    Icons.chat_bubble_outline,
    size: 40.0,
  ),
  onPressed: (widget) {
    backPage.update(
      duration: 0.5,
      color: Colors.purple,
    );
    indicator.update(duration: 0.5, left: 50, right: 240);
    chatBtn.update(
      duration: 0.5,
      ease: Ease.backInOut,
      left: 80,
    );
    feedsBtn.update(
      duration: 0.5,
      ease: Ease.backInOut,
      right: 80,
    );
    roundBtn.update(
      duration: 0.5,
      ease: Ease.backInOut,
      bottom: 20,
      child: Icon(
        Icons.lens,
        size: 100.0,
      ),
    );
    rotateBtn.update(
      duration: 0.5,
      rotation: 0,
      ease: Ease.bounceInOut,
      scale: Offset(0.0, 0.0),
    );
    frontPage.update(
        scale: Offset(1, 1), color: Colors.purple[900], duration: 0.3);
    titleText.update(
      scale: Offset(1.0, 1.0),
      child: Padding(
        padding: EdgeInsets.all(10.0),
        child: SafeArea(
            child: Text(
          "Chats",
          style: TextStyle(
            fontSize: 50.0,
          ),
        )),
      ),
    );
  },
);

UniversalWidget roundBtn = UniversalWidget(
  left: 100,
  right: 100,
  bottom: 100,
  child: Icon(
    Icons.radio_button_unchecked,
    size: 100.0,
  ),
  onPressed: (widget) {
    backPage.update(
      duration: 0.5,
      color: Colors.red[900],
    );
    chatBtn.update(
      duration: 0.5,
      ease: Ease.backInOut,
      left: 20,
    );
    feedsBtn.update(duration: 0.5, ease: Ease.backInOut, right: 20);
    roundBtn.update(
      duration: 0.5,
      ease: Ease.backInOut,
      bottom: 100,
      child: Icon(
        Icons.radio_button_unchecked,
        size: 100.0,
      ),
    );
    rotateBtn.update(
      duration: 0.7,
      rotation: 360,
      ease: Ease.easeInOut,
      scale: Offset(1.0, 1.0),
    );
    indicator.update(
      duration: 0.5,
      left: 150,
      right: 150,
    );
    frontPage.update(scale: Offset(0, 0), duration: 0.3);
    titleText.update(
      scale: Offset(0.0, 0.0),
    );
  },
);

UniversalWidget rotateBtn = UniversalWidget(
  left: 150,
  right: 150,
  bottom: 50,
  scale: Offset(1.0, 1.0),
  child: Icon(
    Icons.threed_rotation,
    size: 30.0,
  ),
  onPressed: (widget) {
    roundBtn.update(
      child: Icon(
        Icons.lens,
        size: 100.0,
      ),
    );
    rotateBtn.update(
      duration: 0.5,
      rotation: -360,
    );
    frontPage.update(scale: Offset(0, 0), duration: 0.3);
    frontPage.update(
      duration: 0.4,
      ease: Ease.easeInOut,
      color: Colors.blue[900],
      scale: Offset(2.0, 2.0),
    );
  },
);

UniversalWidget feedsBtn = UniversalWidget(
  right: 20,
  bottom: 20,
  child: Icon(
    Icons.sort,
    size: 40.0,
  ),
  onPressed: (widget) {
    backPage.update(
      duration: 0.5,
      color: Colors.amber[900],
    );
    chatBtn.update(
      duration: 0.5,
      ease: Ease.backInOut,
      left: 80,
    );
    feedsBtn.update(
      duration: 0.5,
      ease: Ease.backInOut,
      right: 80,
    );
    roundBtn.update(
      duration: 0.5,
      ease: Ease.backInOut,
      bottom: 20,
      child: Icon(
        Icons.lens,
        size: 100.0,
      ),
    );
    rotateBtn.update(
      duration: 0.5,
      rotation: 0,
      ease: Ease.easeInOut,
      scale: Offset(0.0, 0.0),
    );
    indicator.update(duration: 0.5, left: 240, right: 50);
    frontPage.update(scale: Offset(1, 1), color: Colors.amber, duration: 0.3);
    titleText.update(
      scale: Offset(1.0, 1.0),
      child: Padding(
        padding: EdgeInsets.all(10.0),
        child: SafeArea(
          child: Text(
            "Feeds",
            style: TextStyle(
              fontSize: 50.0,
            ),
          ),
        ),
      ),
    );
  },
);
