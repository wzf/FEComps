//
//  NSObject+AlertView.m
//  Pods
//
//  Created by wangzhanfeng-PC on 15/7/24.
//
//

#import "NSObject+AlertView.h"

NSString * kAlertViewBtnTextValueOK     = @"确定";
NSString * kAlertViewBtnTextValueCancel = @"取消";

NSInteger tagAlertViewTagDefault = 9999;

@implementation NSObject (AlertView)

// C方式调用
void alert(NSString *title, NSString *text, NSString *okBtn, NSString *cancelBtn, id<UIAlertViewDelegate> delegate, NSInteger tag) {
    //
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:title message:text delegate:delegate cancelButtonTitle:cancelBtn otherButtonTitles:okBtn, nil];
    alert.tag = tag;
    [alert show];
}

void alert1(NSString *title) {
    alert(title, nil, kAlertViewBtnTextValueOK, nil, nil, tagAlertViewTagDefault);
}
void alert2(NSString *title, NSString *text) {
    alert(title, text, kAlertViewBtnTextValueOK, nil, nil, tagAlertViewTagDefault);
}
void alert3(NSString *title, NSString *text, NSString *okBtn) {
    alert(title, text, okBtn, nil, nil, tagAlertViewTagDefault);
}
void alert4(NSString *title, NSString *text, NSString *okBtn, NSString *cancelBtn) {
    alert(title, text, okBtn, cancelBtn, nil, tagAlertViewTagDefault);
}
void alert5(NSString *title, NSString *text, NSString *okBtn, NSString *cancelBtn, id<UIAlertViewDelegate> delegate) {
    alert(title, text, okBtn, cancelBtn, delegate, tagAlertViewTagDefault);
}
void alert6(NSString *title, NSString *text, NSString *okBtn, NSString *cancelBtn, id<UIAlertViewDelegate> delegate, NSInteger tag) {
    alert(title, text, okBtn, cancelBtn, delegate, tag);
}


// ObjC方式调用
- (void)alertWithTitle:(NSString *)title;
{
    alert1(title);
}
- (void)alertWithTitle:(NSString *)title text:(NSString *)text;
{
    alert2(title, text);
}
- (void)alertWithTitle:(NSString *)title text:(NSString *)text okBtn:(NSString *)okBtn;
{
    alert3(title, text, okBtn);
}
- (void)alertWithTitle:(NSString *)title text:(NSString *)text okBtn:(NSString *)okBtn cancel:(NSString *)cancel;
{
    alert4(title, text, okBtn, cancel);
}
- (void)alertWithTitle:(NSString *)title text:(NSString *)text okBtn:(NSString *)okBtn cancel:(NSString *)cancel delegate:(id<UIAlertViewDelegate>)delegate tag:(NSInteger)tag;
{
    alert6(title, text, okBtn, cancel, delegate, tag);
}

@end
