//
//  NSObject+AlertView.h
//  Pods
//
//  Created by wangzhanfeng-PC on 15/7/24.
//
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

// localized string key
//extern NSString *const kAlertViewBtnTextKeyOK;
//extern NSString *const kAlertViewBtnTextKeyCancel;
//
//extern NSString *const kAlertViewBtnTextValueOK;
//extern NSString *const kAlertViewBtnTextValueCancel;

//NSInteger const tagAlertViewTagDefault = 9999;

@interface NSObject (AlertView)

void alert1(NSString *title);
void alert2(NSString *title, NSString *text);
void alert3(NSString *title, NSString *text, NSString *okBtn);
void alert4(NSString *title, NSString *text, NSString *okBtn, NSString *cancelBtn);
void alert5(NSString *title, NSString *text, NSString *okBtn, NSString *cancelBtn, id<UIAlertViewDelegate> delegate);
void alert6(NSString *title, NSString *text, NSString *okBtn, NSString *cancelBtn, id<UIAlertViewDelegate> delegate, NSInteger tag);

- (void)alertWithTitle:(NSString *)title;
- (void)alertWithTitle:(NSString *)title text:(NSString *)text;
- (void)alertWithTitle:(NSString *)title text:(NSString *)text okBtn:(NSString *)okBtn;
- (void)alertWithTitle:(NSString *)title text:(NSString *)text okBtn:(NSString *)okBtn cancel:(NSString *)cancel;

- (void)alertWithTitle:(NSString *)title text:(NSString *)text okBtn:(NSString *)okBtn cancel:(NSString *)cancel delegate:(id<UIAlertViewDelegate>)delegate tag:(NSInteger)tag;

@end
