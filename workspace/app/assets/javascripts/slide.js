/* global Sly */
/* global $   */
var upcomming_event_sly = new Sly($('.upcomming_event_frame'), {
         horizontal: 1,

         // Item based navigation
         itemNav: 'basic',
         //smart: 1,
         activateMiddle: 1,
         activateOn: 'click',

         // Scrollbar
         //scrollBar: self.$('.js-slyScrollbar'),
         dragHandle: 1,
//            dynamicHandle: 1,
         clickBar: 1,

         // Dragging
         mouseDragging: 1,
         touchDragging: 1,
         releaseSwing: 1,
         elasticBounds: 1,

         // Mixed options
         easing: 'swing',
         speed: 300,

         // Classes
         activeClass: 'active',

         // Buttons
         prev: self.$('.js-previous'),
         next: self.$('.js-next')
     });
     
var may_you_love_event_sly = new Sly($('.may_you_love_event_frame'), {
         horizontal: 1,

         // Item based navigation
         itemNav: 'basic',
         //smart: 1,
         activateMiddle: 1,
         activateOn: 'click',

         // Scrollbar
         //scrollBar: self.$('.js-slyScrollbar'),
         dragHandle: 1,
//            dynamicHandle: 1,
         clickBar: 1,

         // Dragging
         mouseDragging: 1,
         touchDragging: 1,
         releaseSwing: 1,
         elasticBounds: 1,

         // Mixed options
         easing: 'swing',
         speed: 300,

         // Classes
         activeClass: 'active',

         // Buttons
         prev: self.$('.js-previous'),
         next: self.$('.js-next')
     });
     
  
  
var top_group_sly = new Sly($('.top_group_frame'), {
         horizontal: 1,

         // Item based navigation
         itemNav: 'basic',
         //smart: 1,
         activateMiddle: 1,
         activateOn: 'click',

         // Scrollbar
         //scrollBar: self.$('.js-slyScrollbar'),
         dragHandle: 1,
//            dynamicHandle: 1,
         clickBar: 1,

         // Dragging
         mouseDragging: 1,
         touchDragging: 1,
         releaseSwing: 1,
         elasticBounds: 1,

         // Mixed options
         easing: 'swing',
         speed: 300,

         // Classes
         activeClass: 'active',

         // Buttons
         prev: self.$('.js-previous'),
         next: self.$('.js-next')
     });
     
     
     
  
var may_you_love_group_sly = new Sly($('.may_you_love_group_frame'), {
         horizontal: 1,

         // Item based navigation
         itemNav: 'basic',
         //smart: 1,
         activateMiddle: 1,
         activateOn: 'click',

         // Scrollbar
         //scrollBar: self.$('.js-slyScrollbar'),
         dragHandle: 1,
//            dynamicHandle: 1,
         clickBar: 1,

         // Dragging
         mouseDragging: 1,
         touchDragging: 1,
         releaseSwing: 1,
         elasticBounds: 1,

         // Mixed options
         easing: 'swing',
         speed: 300,

         // Classes
         activeClass: 'active',

         // Buttons
         prev: self.$('.js-previous'),
         next: self.$('.js-next')
     });
     
     
var artist_sly = new Sly($('.artist_frame'), {
         horizontal: 1,

         // Item based navigation
         itemNav: 'basic',
         //smart: 1,
         activateMiddle: 1,
         activateOn: 'click',

         // Scrollbar
         //scrollBar: self.$('.js-slyScrollbar'),
         dragHandle: 1,
//            dynamicHandle: 1,
         clickBar: 1,

         // Dragging
         mouseDragging: 1,
         touchDragging: 1,
         releaseSwing: 1,
         elasticBounds: 1,

         // Mixed options
         easing: 'swing',
         speed: 300,

         // Classes
         activeClass: 'active',

         // Buttons
         prev: self.$('.js-previous'),
         next: self.$('.js-next')
     });
     
  
  


try{ may_you_love_event_sly.init(); }
catch(err){ } 

try{ upcomming_event_sly.init(); }
catch(err){  }

try{ top_group_sly.init(); }
catch(err){  }

try{ may_you_love_group_sly.init(); }
catch(err){  }


try { artist_sly.init(); }
catch(erro){ } 
