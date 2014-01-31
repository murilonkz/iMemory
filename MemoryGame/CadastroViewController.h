//
//  CadastroViewController.h
//  MemoryGame
//
//  Created by Murilo Campaner on 29/01/14.
//  Copyright (c) 2014 Murilo Campaner. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CadastroViewController : UIViewController<UIPickerViewDelegate>
- (IBAction)btnCadastrar:(id)sender;
@property (weak, nonatomic) IBOutlet UITextField *inptNome;
@property (weak, nonatomic) IBOutlet UIPickerView *pickerBaralho;


@end
