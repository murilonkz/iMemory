//
//  IndexViewController.m
//  MemoryGame
//
//  Created by Murilo Campaner on 28/01/14.
//  Copyright (c) 2014 Murilo Campaner. All rights reserved.
//

#import "IndexViewController.h"
#import "HighscoresViewController.h"
#import "GameViewController.h"
#import "CadastroViewController.h"
@interface IndexViewController ()

@end

@implementation IndexViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
//        NSUserDefaults *userDef = [NSUserDefaults standardUserDefaults];
//        NSString *nome = _inptText.text;
//        [userDef setObject: nome forKey:@"Nome"];
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Verifica se o usuário já informou o nome algum dia
    // Se já informou, então pergunta se ele deseja alterar o nome e a tela continua a mesma
    // Se ele desejar alterar o nome, então mostra a tela de cadastro, caso contrário não faz nada
    // Se ele nunca informou o nome então mostra a tela de cadastro

    
}

- (void)viewDidAppear:(BOOL)animated
{
    CadastroViewController *view = [[CadastroViewController alloc] init];
    [self presentViewController:view animated:YES completion:nil];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)btnJogarAgora:(id)sender {
    GameViewController *view = [[GameViewController alloc] init];
    [self presentViewController:view animated:YES completion:nil];
}

- (IBAction)btnHighscores:(id)sender {
    HighscoresViewController *view = [[HighscoresViewController alloc] init];
    [self presentViewController:view animated:YES completion:nil];
}
@end
