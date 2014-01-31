//
//  Baralho.m
//  ;
//
//  Created by Murilo Campaner on 28/01/14.
//  Copyright (c) 2014 Murilo Campaner. All rights reserved.
//

#import "Baralho.h"

@implementation Baralho

int segundosMostrar;
int x, y, w, h, margin, pos;

NSArray *imgs;

- (id)init
{
    self = [super init];
    if (self) {
        segundosMostrar = 3;
        cartaVirada = [UIImage imageNamed:@"CartaVirada.jpg"];
        
        
        imgs = [NSArray arrayWithObjects: [UIImage imageNamed:@"Alemanha.jpg"],
                                          [UIImage imageNamed:@"Argentina.jpg"],
                                          [UIImage imageNamed:@"Chile.jpg"],
                                          [UIImage imageNamed:@"Colombia.jpg"],
                                          [UIImage imageNamed:@"Espanha.jpg"],
                                          [UIImage imageNamed:@"Equador.jpg"],
                                          [UIImage imageNamed:@"Holanda.jpg"],
                                          [UIImage imageNamed:@"Inglaterra.jpg"],
                                          [UIImage imageNamed:@"Itália.jpg"],
                                          [UIImage imageNamed:@"Rússia.jpg"],
                                           nil
                ];
        
        qtdCartas = imgs.count;

        x = 7;
        y = 60;
        w = 70;
        h = 70;
        margin = 80;
    }
    return self;
}

- (NSMutableArray *) embaralhar: (NSMutableArray*) nArray
{
	for (int i = 0; i < nArray.count; i++) {
        int randomInt1 = arc4random() % [nArray count];
        int randomInt2 = arc4random() % [nArray count];
        [nArray exchangeObjectAtIndex:randomInt1 withObjectAtIndex:randomInt2];
    }
    
    return nArray;
}


- (NSMutableArray*) montarCartasViradas
{
    int aux = 0;
    NSMutableArray *cartas = [[NSMutableArray alloc]init];
    for (int i = 0; i < qtdCartas; i++)
    {
        UIImageView *iv = [[UIImageView alloc]initWithFrame:CGRectMake(x, y, w, h)];
        [iv setImage: [imgs objectAtIndex:i]];
        [iv setTag: i];
        iv.userInteractionEnabled = YES;
        
        
        [cartas addObject:iv];
        
        if ((aux+1 )% 4) {
            x = x + margin;
        }
        else {
            y = y + margin;
            x = 7;
        }
        aux++;

    }
    
    aux = 2;
    for (int i = 0; i < qtdCartas; i++)
    {
        UIImageView *iv = [[UIImageView alloc]initWithFrame:CGRectMake(x, y, w, h)];
        [iv setImage: [imgs objectAtIndex:i]];
        [iv setTag: i];
        
        [iv setImage: [imgs objectAtIndex:i]];
        iv.userInteractionEnabled = YES;
        
        
        [cartas addObject:iv];
        
        if ((aux+1 )% 4) {
            x = x + margin;
        }
        else {
            y = y + margin;
            x = 7;
        }
        aux++;
        
    }
    
    return cartas;
}

- (void) mostrarBaralho
{
    
}


@end
