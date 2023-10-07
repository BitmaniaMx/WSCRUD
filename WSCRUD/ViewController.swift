//
//  ViewController.swift
//  WSCRUD
//
//  Created by Rafael González on 07/10/23.
//

import UIKit

class ViewController: UIViewController {

    let postService = PostServiceManager()
    var myPost = Post(id: nil,title: "Hello Post", body: "Post content", userId: 1)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        //Create
        postService.createPost(post: myPost){ createdPost in
            
            if let createdPost = createdPost{
                print("created post:", createdPost)
                self.myPost = createdPost
                
            }
            else{
                print("Error: Failed to create post")
            }
        }
        
        //Update
        
        myPost = Post(id: 50, title: "updated post", body: "New content", userId: 5)
        postService.updatePost(post: myPost){ updatePost in
            if let updatePost = updatePost{
                print("updted post:", updatePost)
            }
            else{
                print("Error: Failed to update post")
            }
        }
        
        
        //Delete
        postService.deletePost(id: 50){ statusCode in
            if statusCode == 200{
                print("Post deleted")
            }
            else{
                print("Failed to delete post")
            }
        }
    }
}

