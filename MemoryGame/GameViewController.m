//
//  GameViewController.m
//  MemoryGame
//
//  Created by Murilo Campaner on 28/01/14.
//  Copyright (c) 2014 Murilo Campaner. All rights reserved.
//

#import "GameViewController.h"
#import "Baralho.h"
@interface GameViewController ()

@end

@implementation GameViewController
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
    
    // Do any additional setup after loading the view from its nib.
    Baralho *bar = [[Baralho alloc]init];
    NSMutableArray *cartas = [[NSMutableArray alloc]init];
    cartas = [bar montarCartasViradas];
    cartas = [bar embaralhar:cartas];
    
    
    
    for (int i = 0; i < cartas.count; i++) {
        UITapGestureRecognizer *singleTap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(mostrarCarta:)];
        
        [[cartas objectAtIndex:i]addGestureRecognizer:singleTap];
        [self.view addSubview:[cartas objectAtIndex:i]];
    }
    
//    self.view = [bar montarCartasViradas:self.view];
    // Espera 3 segundos
    // Desvira as cartas
    // Espera x segundos
    // Vira novamente
    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (void)mostrarCarta: (UIGestureRecognizer *)gestureRecognizer
{
    NSLog(@"%i", gestureRecognizer.view.tag);
}
@end
