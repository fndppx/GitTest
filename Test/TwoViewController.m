//
//  TwoViewController.m
//  Test
//
//  Created by weikeyan on 2022/5/24.
//

#import "TwoViewController.h"
#import "CustomTextField.h"

@interface TwoViewController ()
//@property (nonatomic, strong) CustomTextField *textField;
@end

@implementation TwoViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    CustomTextField *tf = [[CustomTextField alloc]initWithFrame:CGRectMake(100, 300, 100, 100)];
    tf.backgroundColor = [UIColor redColor];
    [self.view addSubview:tf];
    
    [tf becomeFirstResponder];
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(3 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        [self dismissViewControllerAnimated:YES completion:nil];
    });
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
