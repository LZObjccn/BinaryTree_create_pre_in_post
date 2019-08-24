//
//  ViewController.m
//  BinaryTree_create_pre_in_post
//
//  Created by lizizhen on 2019/8/24.
//  Copyright © 2019 lizi' zhen. All rights reserved.
//

#import "ViewController.h"

typedef struct BTNode {
    char data;
    struct BTNode *pLchild; // p代表指针  L代表左 child代表孩子
    struct BTNode *pRchild;
}BTNODE, *PBTNODE;

@implementation ViewController


/* 二叉树结构
 a
 b       c
 d
 e
 */

- (void)viewDidLoad {
    [super viewDidLoad];
    
    PBTNODE pT = createBTree();
    //    PreTraverseTree(pT);
    //    InTraverseTree(pT);
    PostTraverseTree(pT);
}

// 先序
void PreTraverseTree(PBTNODE pT) {
    
    if (pT == NULL) return;
    printf("%c\n", pT->data);
    if (pT->pLchild != NULL) PreTraverseTree(pT->pLchild);
    if (pT->pRchild != NULL) PreTraverseTree(pT->pRchild);
    
    /*
     伪算法
     先访问根节点
     再先序遍历左子树
     再先序遍历右子树
     */
    return;
}

// 中序
void InTraverseTree(PBTNODE pT) {
    if (pT == NULL) return;
    if (pT->pLchild != NULL) InTraverseTree(pT->pLchild);
    printf("%c\n", pT->data);
    if (pT->pRchild != NULL) InTraverseTree(pT->pRchild);
    
    /*
     伪算法
     先中序遍历左子树
     再访问根节点
     再中序遍历右子树
     */
    return;
}

// 后序
void PostTraverseTree(PBTNODE pT) {
    if (pT == NULL) return;
    if (pT->pLchild != NULL) PostTraverseTree(pT->pLchild);
    if (pT->pRchild != NULL) PostTraverseTree(pT->pRchild);
    printf("%c\n", pT->data);
    
    /*
     伪算法
     先后序遍历左子树
     再后序遍历右子树
     再访问根节点
     */
    return;
}

PBTNODE createBTree(void) {
    
    PBTNODE pA = (PBTNODE)malloc(sizeof(BTNODE));
    PBTNODE pB = (PBTNODE)malloc(sizeof(BTNODE));
    PBTNODE pC = (PBTNODE)malloc(sizeof(BTNODE));
    PBTNODE pD = (PBTNODE)malloc(sizeof(BTNODE));
    PBTNODE pE = (PBTNODE)malloc(sizeof(BTNODE));
    
    pA->data = 'A';
    pB->data = 'B';
    pC->data = 'C';
    pD->data = 'D';
    pE->data = 'E';
    
    pA->pLchild = pB;
    pA->pRchild = pC;
    pB->pLchild = pB->pRchild = NULL;
    pC->pLchild = pD;
    pC->pRchild = NULL;
    pD->pLchild = NULL;
    pD->pRchild = pE;
    pE->pLchild = pE->pRchild = NULL;
    
    return pA;
}
@end

