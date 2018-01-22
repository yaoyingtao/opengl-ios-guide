//
//  AGLView.m
//  MY_Ch02
//
//  Created by tomy yao on 2018/1/22.
//  Copyright © 2018年 tomy yao. All rights reserved.
//

#import "AGLView.h"
#import <OpenGLES/ES2/gl.h>
#import <OpenGLES/ES2/glext.h>


static const float vertices[] =
{
    -0.5f, -0.5f, 0.0, // lower left corner
    0.5f, -0.5f, 0.0, // lower right corner
    -0.5f,  0.5f, 0.0  // upper left corner
};

@interface AGLView ()
@property (nonatomic, strong) EAGLContext *context;
@property (nonatomic, assign) GLuint frameBuffer;
@property (nonatomic, assign) GLuint colorBuffer;
@property (nonatomic, assign) GLuint VAO;

@end

@implementation AGLView

#pragma mark - life cycle
- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        [self commonInit];
    }
    return self;
}

+ (Class)layerClass {
    return [CAEAGLLayer class];
}

- (void)commonInit {
    self.backgroundColor = [UIColor redColor];
    [self setUpLayer];
    [self setUpContext];
    [self setUpFrameBuffer];
    [self setUpDataBuffer];
    [self render];
}

#pragma mrak - init
- (void)setUpLayer {
    CAEAGLLayer *layer = (CAEAGLLayer*)self.layer;
    [layer setDrawableProperties:@{kEAGLDrawablePropertyRetainedBacking:@NO, kEAGLDrawablePropertyColorFormat:kEAGLColorFormatRGBA8}];
}

- (void)setUpContext {
    _context = [[EAGLContext alloc] initWithAPI:kEAGLRenderingAPIOpenGLES2];
    [EAGLContext setCurrentContext:_context];
}

- (void)setUpFrameBuffer {
    glGenFramebuffers(1, &_frameBuffer);
    glBindBuffer(GL_FRAMEBUFFER, _frameBuffer);
    
    glGenRenderbuffers(1, &_colorBuffer);
    glBindRenderbuffer(GL_RENDERBUFFER, _colorBuffer);
    
    glFramebufferRenderbuffer(GL_FRAMEBUFFER, GL_COLOR_ATTACHMENT0, GL_RENDERBUFFER, _colorBuffer);
}

- (void)setUpDataBuffer {
    glGenBuffers(1, &_VAO);
    glBindBuffer(GL_ARRAY_BUFFER, _VAO);
    glBufferData(GL_ARRAY_BUFFER, sizeof(vertices), vertices, GL_STATIC_DRAW);
}

- (void)render {
    
}


@end
