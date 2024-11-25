export class MessageHandlers {
  static async handleHelloWorld(message: any) {
    console.log('Received hello world message:', message);
    return { status: 'processed', message: 'Hello received' };
  }

  static async handleResponseHello(message: any) {
    console.log('Received response hello message:', message);
    return { status: 'processed', message: 'Response received' };
  }
}

export const topicHandlers = {
  helloworld: MessageHandlers.handleHelloWorld,
  responseHello: MessageHandlers.handleResponseHello
};
