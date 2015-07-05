# ParticleSystem
Water animation using Particle System - http://iosrecipe.blogspot.com/2015/07/water-fall-animation-using-particle.html

Water falling is a cool piece of animation in iOS apps. I had to use particle system
to create an animation where water hose is spraying water. Think of the real water hose.

1. You have a continuous flow of water which are collection of water drops. 
2. The shape in which water falls (you may have seen the settings on the hose - shower, mist, full etc).

The above two concepts translate exactly to the concepts of emitter cell and an emitter layer.

There is one more thing: 

In the real world, water will always fall down because of gravity. But in programming world
water direction need to be controlled. This is controlled by a property called emissionLongitude.
