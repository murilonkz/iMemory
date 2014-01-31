//
//  CadastroViewController.m
//  MemoryGame
//
//  Created by Murilo Campaner on 29/01/14.
//  Copyright (c) 2014 Murilo Campaner. All rights reserved.
//

#import "CadastroViewController.h"
#import "IndexViewController.h"
@interface CadastroViewController ()

@end

@implementation CadastroViewController
@synthesize inptNome, pickerBaralho;


- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        
    }
    return self;
}


- (void)viewDidLoad
{
    [super viewDidLoad];
    
    NSUserDefaults *userDef = [NSUserDefaults standardUserDefaults];
    NSString *nome = [userDef objectForKey:@"Nome"];
    inptNome.text = nome;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)btnCadastrar:(id)sender {
    NSUserDefaults *userDef = [NSUserDefaults standardUserDefaults];
    
    NSString *nome = [userDef objectForKey:@"Nome"];
    
    nome = inptNome.text;
    [userDef setValue:nome forKey:@"Nome"];
    
    [userDef synchronize];
    
    IndexViewController *view = [[IndexViewController alloc] init];
    [self presentViewController:view animated:YES completion:nil];
}
@end
