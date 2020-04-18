package ru.javastudy.mvcHtml5Angular.mvc.rest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.client.RestTemplate;
import ru.javastudy.mvcHtml5Angular.mvc.rest.model.RestPostsModel;
import ru.javastudy.mvcHtml5Angular.mvc.rest.model.RestUserModel;

import java.util.Arrays;
import java.util.List;

/**
 * Created for JavaStudy.ru on 28.02.2016.
 */
@RestController //will add automatically the @ResponseBody annotation to all methods
public class RestTemplateController {

    /**
     * Accessing a third-party REST service inside a Spring application
     * it can even bind that data to custom domain types.
     */
    @Autowired
    private RestTemplate restTemplate;

    private final String EXTERNAL_REST_URL = "http://jsonplaceholder.typicode.com"; //free JSON services

    @RequestMapping(value = "/rest/users", method = RequestMethod.GET)
    public List<RestUserModel> getRestUsers() {
        System.out.println("RestTemplateController getRestUsers is called");

        //JSON http://jsonplaceholder.typicode.com/users
        ResponseEntity<RestUserModel[]> response = restTemplate.getForEntity(
                EXTERNAL_REST_URL +"/users",
                RestUserModel[].class
        );
        return Arrays.asList(response.getBody());
    }

    @RequestMapping(value = "/rest/posts", method = RequestMethod.GET)
    public List<RestPostsModel> getRestPosts() {
        System.out.println("RestTemplateController getRestPosts is called");

        ResponseEntity<RestPostsModel[]> response = restTemplate.getForEntity(
                EXTERNAL_REST_URL +"/posts",
                RestPostsModel[].class
        );
        return Arrays.asList(response.getBody());
    }
    @RequestMapping(value = "/rest/posts/{param}", method = RequestMethod.GET)
    public RestPostsModel getRestPostsById(@PathVariable("param") String param) {
        System.out.println("RestTemplateController getRestPostsById is called");

        ResponseEntity<RestPostsModel> response = restTemplate.getForEntity(
                EXTERNAL_REST_URL +"/posts/" + param,
                RestPostsModel.class
        );
        return response.getBody();
    }

    //JSON Deletes a post
    @RequestMapping(value = "/rest/delPosts/{postId}", method = RequestMethod.GET)
    @ResponseStatus(value = HttpStatus.OK)
    public void deletePostByID(@PathVariable(value="postId") String postId) {
        //in test case 100 posts. Try to del id 100+ (id=150 for example) and check status in console
        restTemplate.delete(EXTERNAL_REST_URL +"/posts/" + postId);
        System.out.println("@RestTemplateControllerExample deletePostByID is called");
    }

    //JSON Deletes a post. Uses in angularjs/httpresource.jsp
    @RequestMapping(value = "/rest/delPosts/{postId}", method = RequestMethod.DELETE)
    @ResponseStatus(value = HttpStatus.OK)
    public void deletePostByIDAngular(@PathVariable(value="postId") String postId) {
        //in test case 100 posts. Try to del id 100+ (id=150 for example) and check status in console
        restTemplate.delete(EXTERNAL_REST_URL +"/posts/" + postId);
        System.out.println("@RestTemplateControllerExample deletePostByID is called");
    }

    @ExceptionHandler
    @ResponseStatus(value = HttpStatus.FORBIDDEN,reason="FORBIDDEN ACCESS (PROVIDE YOUR CUSTOM REASON HERE)")
    public void handleException(Exception ex) {
        System.out.println("@RestTemplateControllerExample handleException");
        System.out.println(ex);
    }

    //JSON SAVES a post. Uses in angularjs/httpresource.jsp
    @RequestMapping(value = "/rest/savePost", method = RequestMethod.POST)
    @ResponseStatus(value = HttpStatus.OK)
    public void savePost(@RequestBody RestPostsModel postJSON) {

        System.out.println("savePost postJSON.getUserId(): " + postJSON.getUserId());
        System.out.println("savePost postJSON.getTitle(): " + postJSON.getTitle());
        System.out.println("savePost postJSON.getId(): " + postJSON.getId());
        System.out.println("savePost postJSON.getBody(): " + postJSON.getBody());
        System.out.println("@RestTemplateControllerExample savePost is called");
    }
}

